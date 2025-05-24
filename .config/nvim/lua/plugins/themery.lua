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
      },
      live_preview = true,
    }
  end,
}
