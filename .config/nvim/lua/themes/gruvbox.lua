return {
  'ellisonleao/gruvbox.nvim',
  priority = 1000,
  config = true,
  opts = {
    transparent_mode = vim.g.theme_transparency,
  },
  config = function()
    vim.o.background = 'dark'
  end,
}
