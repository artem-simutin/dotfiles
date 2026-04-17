return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter').setup()

    -- Install parsers if missing
    local ensure_installed = {
      'bash', 'c', 'diff', 'go', 'gomod', 'gosum', 'html', 'javascript',
      'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'rust',
      'toml', 'tsx', 'typescript', 'vim', 'vimdoc',
    }

    local installed = require('nvim-treesitter').get_installed()
    local to_install = vim.tbl_filter(function(lang)
      return not vim.tbl_contains(installed, lang)
    end, ensure_installed)

    if #to_install > 0 then
      require('nvim-treesitter').install(to_install)
    end

    -- Enable treesitter-based highlighting
    vim.api.nvim_create_autocmd('FileType', {
      callback = function()
        pcall(vim.treesitter.start)
      end,
    })
  end,
}
