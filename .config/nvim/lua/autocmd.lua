-- Beautiful yanking
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Create a user command :W that saves and "punches" you
vim.api.nvim_create_user_command("W", function()
  vim.cmd("write")
  vim.notify("💢 You just got punched for saving!", vim.log.levels.ERROR, { title = "Save Punishment" })
end, {})

-- Abbreviate :w to :W so it triggers the punch
vim.cmd("cabbrev w W")
