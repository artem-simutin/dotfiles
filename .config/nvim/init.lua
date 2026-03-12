--          __        __ _____
--    _____/ /_____ _/ /<  / /__
--   / ___/ __/ __ `/ __/ / //_/
--  (__  ) /_/ /_/ / /_/ / ,<
-- /____/\__/\__,_/\__/_/_/|_|

require 'options'
require 'theme-management'

local data_dir = vim.fn.stdpath 'data'
local lazypath = data_dir .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

require 'keymaps'
require 'autocmd'

require('lazy').setup({
  require 'plugins',
  require 'themes',
}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
