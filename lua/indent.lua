local function load_lua_configs()

    local lua_dir = vim.fn.stdpath('config') .. '/lua/lang-indent/'
    for _, file in ipairs(vim.fn.glob(lua_dir .. '*.lua', 0, 1)) do
        pcall(loadfile(file))
    end

end

load_lua_configs()
