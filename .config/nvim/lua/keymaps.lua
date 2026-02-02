vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<left>', '<cmd>echo "❌ Use h to move!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "❌ Use l to move!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "❌ Use k to move!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "❌ Use j to move!"<CR>')

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

vim.keymap.set('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>st', '<cmd>Themery<CR>', { noremap = true, silent = true, desc = '[S]earch [T]hemes' })

-- Yank to system clipboard with capital Y
vim.keymap.set('n', 'Y', '"+y', { noremap = true, silent = true })
vim.keymap.set('v', 'Y', '"+y', { noremap = true, silent = true })

-- Paste from system clipboard with capital P
vim.keymap.set('n', 'P', '"+p', { noremap = true, silent = true })
vim.keymap.set('v', 'P', '"+p', { noremap = true, silent = true })

-- Theme management
vim.keymap.set('n', '<leader>tt', Toggle_transparency, { silent = true, noremap = true, desc = '[T]oggle [T]heme Transparency' })
