vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true
vim.o.cmdheight = 0
vim.opt.laststatus = 3

vim.opt.termguicolors = true
vim.o.number = true
vim.o.relativenumber = true

vim.o.mouse = 'a'
vim.o.showmode = false

vim.o.breakindent = true

vim.o.undofile = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.signcolumn = 'yes'

vim.o.updatetime = 250

vim.o.timeoutlen = 300

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

-- Show which line your cursor is on
vim.o.cursorline = false

vim.o.scrolloff = 10

vim.o.confirm = true

vim.opt.listchars = { tab = '  ' }
vim.opt.list = false
