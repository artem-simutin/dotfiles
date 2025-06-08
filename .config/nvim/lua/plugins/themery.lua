return {
  'zaldih/themery.nvim',
  lazy = false,
  config = function()
    require('themery').setup {
      themes = {
        {
          name = 'Tokyonight',
          colorscheme = 'tokyonight-night',
        },
        {
          name = 'Tokyonight Moon',
          colorscheme = 'tokyonight-moon',
        },
        {
          name = 'Tokyonight Storm',
          colorscheme = 'tokyonight-storm',
        },
        {
          name = 'Tokyonight Day',
          colorscheme = 'tokyonight-day',
        },
        {
          name = 'Nordic',
          colorscheme = 'nordic',
        },
        {
          name = 'Onedark',
          colorscheme = 'onedark',
        },
        {
          name = 'Catppuccin Latte',
          colorscheme = 'catppuccin-latte',
        },
        {
          name = 'Catppuccin Frappe',
          colorscheme = 'catppuccin-frappe',
        },
        {
          name = 'Catppuccin Macchiato',
          colorscheme = 'catppuccin-macchiato',
        },
        {
          name = 'Catppuccin Mocha',
          colorscheme = 'catppuccin-mocha',
        },
        {
          name = 'Vague',
          colorscheme = 'vague',
        },
      },
      live_preview = true,
    }
  end,
}
