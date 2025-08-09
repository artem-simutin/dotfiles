local function load_transparency()
  local file = io.open(vim.fn.stdpath 'data' .. '/transparency_state', 'r')
  if file then
    vim.g.theme_transparency = file:read() == 'true'
    file:close()
  end
end

local function save_transparency()
  local file = io.open(vim.fn.stdpath 'data' .. '/transparency_state', 'w')
  if file then
    file:write(tostring(vim.g.theme_transparency))
    file:close()
  end
end

function Toggle_transparency()
  print 'Theme Transparency toggled!'
  vim.g.theme_transparency = not vim.g.theme_transparency
  save_transparency()
end

load_transparency()
