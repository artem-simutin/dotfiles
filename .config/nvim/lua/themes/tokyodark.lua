return {
  'tiagovla/tokyodark.nvim',
  opts = {
    transparent_background = vim.g.theme_transparency,
  },
  config = function(_, opts)
    require('tokyodark').setup(opts) -- calling setup is optional
  end,
}
