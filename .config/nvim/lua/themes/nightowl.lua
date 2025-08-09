return {
  'oxfist/night-owl.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('night-owl').setup {
      transparent_background = vim.g.theme_transparency,
    }
  end,
}
