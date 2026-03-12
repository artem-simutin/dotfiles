return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_format = 'fallback' }
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  config = function()
    local conform = require 'conform'

    local biome_configs = { 'biome.json', 'biome.jsonc' }
    local prettier_configs = {
      '.prettierrc',
      '.prettierrc.json',
      '.prettierrc.json5',
      '.prettierrc.yaml',
      '.prettierrc.yml',
      '.prettierrc.js',
      '.prettierrc.cjs',
      '.prettierrc.mjs',
      '.prettierrc.ts',
      '.prettierrc.mts',
      '.prettierrc.cts',
      'prettier.config.js',
      'prettier.config.cjs',
      'prettier.config.mjs',
      'prettier.config.ts',
      'prettier.config.mts',
      'prettier.config.cts',
    }

    local function has_config(root, configs)
      for _, cfg in ipairs(configs) do
        if vim.fn.filereadable(root .. '/' .. cfg) == 1 then
          return true
        end
      end
      return false
    end

    local function get_js_formatters(_bufnr)
      local root = vim.fn.getcwd()
      local use_biome = has_config(root, biome_configs)
      local use_prettier = has_config(root, prettier_configs)

      if use_biome and not use_prettier then
        return { 'biome', 'biome-organize-imports' }
      elseif use_prettier and not use_biome then
        return { 'prettierd', 'prettier', stop_after_first = true }
      elseif use_biome and use_prettier then
        -- Both present: prefer biome
        return { 'biome', 'biome-organize-imports' }
      else
        -- Neither found: fall back to prettier
        return { 'prettierd', 'prettier', stop_after_first = true }
      end
    end

    conform.setup {
      notify_on_error = false,
      format_on_save = function(bufnr)
        local disable_filetypes = { c = true, cpp = true }
        if disable_filetypes[vim.bo[bufnr].filetype] then
          return nil
        else
          return {
            timeout_ms = 3000,
            lsp_format = 'fallback',
          }
        end
      end,
      formatters_by_ft = {
        lua = { 'stylua' },
        javascript = get_js_formatters,
        typescript = get_js_formatters,
        javascriptreact = get_js_formatters,
        typescriptreact = get_js_formatters,
        go = { 'gofmt', 'goimports' },
        python = { 'isort', 'black' },
        sql = { 'sql_formatter' },
      },
    }
  end,
}
