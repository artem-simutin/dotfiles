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
        {
          name = 'Nightfox',
          colorscheme = 'nightfox',
        },
        {
          name = 'Dayfox',
          colorscheme = 'dayfox',
        },
        {
          name = 'Dawnfox',
          colorscheme = 'Dawnfox',
        },
        {
          name = 'Duskfox',
          colorscheme = 'duskfox',
        },
        {
          name = 'Nordfox',
          colorscheme = 'nordfox',
        },
        {
          name = 'Terafox',
          colorscheme = 'terafox',
        },
        {
          name = 'Carbonfox',
          colorscheme = 'carbonfox',
        },
        {
          name = 'Rose Pine',
          colorscheme = 'rose-pine',
        },
        {
          name = 'Rose Pine Moon',
          colorscheme = 'rose-pine-moon',
        },
        {
          name = 'Rose Pine Dawn',
          colorscheme = 'rose-pine-dawn',
        },
        {
          name = 'Gruvbox',
          colorscheme = 'gruvbox',
        },
        {
          name = 'TokyoDark',
          colorscheme = 'tokyodark',
        },
        {
          name = 'NightOwl',
          colorscheme = 'night-owl',
        },
        {
          name = 'Dracula',
          colorscheme = 'dracula',
        },
        {
          name = 'Dracula Soft',
          colorscheme = 'dracula-soft',
        },
        {
          name = 'Ayu Dark',
          colorscheme = 'ayu-dark',
        },
        {
          name = 'Ayu Mirage',
          colorscheme = 'ayu-mirage',
        },
        {
          name = 'Ayu Light',
          colorscheme = 'ayu-light',
        },
      },
      live_preview = true,
    }
  end,
}
