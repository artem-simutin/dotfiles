return {
  {
    'mfussenegger/nvim-lint',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      local lint = require 'lint'

      lint.linters_by_ft = lint.linters_by_ft or {}
      lint.linters_by_ft['markdown'] = { 'markdownlint' }
      lint.linters_by_ft['python'] = { 'ruff' }

      -- JS/TS linters are handled dynamically based on project config files
      local js_fts = { 'javascript', 'typescript', 'javascriptreact', 'typescriptreact' }
      for _, ft in ipairs(js_fts) do
        lint.linters_by_ft[ft] = nil
      end

      lint.linters_by_ft['clojure'] = nil
      lint.linters_by_ft['inko'] = nil
      lint.linters_by_ft['janet'] = nil
      lint.linters_by_ft['rst'] = nil
      lint.linters_by_ft['ruby'] = nil
      lint.linters_by_ft['terraform'] = nil
      lint.linters_by_ft['text'] = nil

      --- Returns the linters to use based on which config files exist in the project root
      local function get_js_linters()
        local root = vim.fn.getcwd()
        local linters = {}

        -- Check for biome config
        local biome_configs = { 'biome.json', 'biome.jsonc' }
        for _, cfg in ipairs(biome_configs) do
          if vim.fn.filereadable(root .. '/' .. cfg) == 1 then
            table.insert(linters, 'biomejs')
            break
          end
        end

        -- Check for eslint config
        local eslint_configs = {
          '.eslintrc',
          '.eslintrc.js',
          '.eslintrc.cjs',
          '.eslintrc.mjs',
          '.eslintrc.json',
          '.eslintrc.yaml',
          '.eslintrc.yml',
          'eslint.config.js',
          'eslint.config.mjs',
          'eslint.config.cjs',
          'eslint.config.ts',
          'eslint.config.mts',
          'eslint.config.cts',
        }
        for _, cfg in ipairs(eslint_configs) do
          if vim.fn.filereadable(root .. '/' .. cfg) == 1 then
            table.insert(linters, 'eslint')
            break
          end
        end

        -- Fallback: if nothing found, default to eslint
        if #linters == 0 then
          table.insert(linters, 'eslint')
        end

        return linters
      end

      local js_ft_set = { javascript = true, typescript = true, javascriptreact = true, typescriptreact = true }

      vim.api.nvim_create_user_command('LintInfo', function()
        local ft = vim.bo.filetype
        local linters
        if js_ft_set[ft] then
          linters = get_js_linters()
        else
          linters = lint.linters_by_ft[ft] or {}
        end
        if #linters == 0 then
          vim.notify('No linters configured for filetype: ' .. ft, vim.log.levels.WARN)
        else
          vim.notify('Linters for ' .. ft .. ': ' .. table.concat(linters, ', '), vim.log.levels.INFO)
        end
      end, { desc = 'Show active linters for the current buffer' })

      local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
      vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
        group = lint_augroup,
        callback = function()
          if not vim.bo.modifiable then
            return
          end

          if js_ft_set[vim.bo.filetype] then
            lint.try_lint(get_js_linters())
          else
            lint.try_lint()
          end
        end,
      })
    end,
  },
}
