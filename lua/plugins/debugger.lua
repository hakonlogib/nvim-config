return {
    "rcarriga/nvim-dap-ui", 
    dependencies = {"mfussenegger/nvim-dap"},
    lazy = true,
    name = "dap",
    config = function()
        local dap = require("dap")
        local dapui =  require("dapui")


        dap.listeners.before.attach.dapui_config = function()
          dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
          dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
          dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
          dapui.close()
        end
        vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, {})
        vim.keymap.set("n", "<leader>ct", dap.continue, {})
    end
}


