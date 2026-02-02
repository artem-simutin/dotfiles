return {
  'Shatur/neovim-ayu',
  opts = {},
  config = function()
    require('ayu').setup {
      terminal = true,
    }
  end,
}
