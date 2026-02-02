local plugin_dir = vim.fn.stdpath("config") .. "/lua/plugins"
local plugins = {}

for _, file in ipairs(vim.fn.readdir(plugin_dir)) do
    if file:sub(-4) == ".lua" and file ~= "init.lua" and not file:match("^_") then
        local ok, mod = pcall(require, "plugins." .. file:sub(1, -5))
        if ok and type(mod) == "table" then
            table.insert(plugins, mod)
        else
            vim.notify("Error loading plugin: " .. file, vim.log.levels.ERROR)
        end
    end
end

return plugins
