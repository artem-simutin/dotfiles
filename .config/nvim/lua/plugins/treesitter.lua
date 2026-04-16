return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter').setup()

    -- Ensure parsers are installed
    local ensure_installed = { 'bash', 'c', 'diff', 'go', 'gomod', 'gosum', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'rust', 'toml', 'vim', 'vimdoc' }
    for _, lang in ipairs(ensure_installed) do
      pcall(function() vim.treesitter.language.add(lang) end)
    end

    -- Enable treesitter-based highlighting and indentation
    vim.api.nvim_create_autocmd('FileType', {
      callback = function()
        pcall(vim.treesitter.start)
      end,
    })
  end,
}
