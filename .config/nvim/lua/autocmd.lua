-- Dim unused code (like VSCode's reduced opacity for unused variables/arguments)
vim.api.nvim_create_autocmd('ColorScheme', {
  desc = 'Override DiagnosticUnnecessary to dim unused code',
  group = vim.api.nvim_create_augroup('diagnostic-unnecessary', { clear = true }),
  callback = function()
    vim.api.nvim_set_hl(0, 'DiagnosticUnnecessary', { link = 'Comment' })
  end,
})
-- Apply immediately for the current colorscheme
vim.api.nvim_set_hl(0, 'DiagnosticUnnecessary', { link = 'Comment' })

-- Beautiful yanking
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
