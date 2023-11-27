M = {}

local function config_dapui()
    local dap, dapui = require "dap", require "dapui"

    dap.listeners.after.event_initialized["dapui_config"] = function ()
        dapui.open()
        vim.api.nvim_command("DapVirtualTextEnable")
    end

    dap.listeners.before.event_terminated["dapui_config"] = function ()
        vim.api.nvim_command("DapVirtualTextDisable")
        dapui.close()
    end

    dap.listeners.before.event_exited["dapui_config"] = function ()
        vim.api.nvim_command("DapVirtualTextDisable")
        dapui.close()
    end

    dap.listeners.before.disconnect["dapui_config"] = function ()
        vim.api.nvim_command("DapVirtualTextDisable")
        dapui.close()
    end
    dap.defaults.fallback.terminal_win_cmd = '30vsplit new'
end

local function config_debuggers()
--    require('dap.ext.vscode').local_launchjs(nil, {cppdbg = {'cpp'}})
    require("dap.di-cpp")
    require("dap.di-python")
end

function M.setup()
    config_dapui()
    config_debuggers()
end

M.setup()
