return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    theme = function()
      local themery = require 'themery'
      local current_theme = themery.getCurrentTheme()
      return current_theme or 'auto'
    end,
    globalstatus = true,
  },
}
