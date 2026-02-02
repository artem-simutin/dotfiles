local plugin_dir = vim.fn.stdpath("config") .. "/lua/themes"
local plugins = {}

for _, file in ipairs(vim.fn.readdir(plugin_dir)) do
    if file:sub(-4) == ".lua" and file ~= "init.lua" then
        local module_name = "themes." .. file:sub(1, -5)
        table.insert(plugins, require(module_name))
    end
end

return plugins
