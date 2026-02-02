if true then
  return {}
end

return {
  'rcarriga/nvim-notify',
  opts = {},
  config = function()
    vim.notify = require 'notify'
  end,
}
