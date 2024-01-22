return {

}
--[[ local bindings = function(dap, dapui)
	vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Debug - Toggle Break Point" })
	vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Debug - Continue/Start" })

	vim.keymap.set("n", "<leader>dt", dapui.toggle, { desc = "Debud - Toggle Debugger View" })
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
end

local init_adapters = function(dap)
	dap.adapters.lldb = {
		type = "executable",
		command = "/Users/jefvaler/.vscode/extensions/vadimcn.vscode-lldb-1.10.0/lldb/bin/lldb", -- adjust as needed, must be absolute path
		name = "lldb",
	}
	--[[ dap.adapters.lldb = {
		type = "server",
		host = "127.0.0.1", -- adjust as needed, must be absolute path
		port = "13000",
	} ]]
--[[ end
local rust_config = function(dap)
	dap.configurations.rust = {
		{
			name = "Launch",
			type = "lldb",
			request = "launch",
			program = function()
				return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
			end,
			cwd = "${workspaceFolder}",
			stopOnEntry = false,
			args = {},

			-- 💀
			-- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
			--
			--    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
			--
			-- Otherwise you might get the following error:
			--
			--    Error on launch: Failed to attach to the target process
			--
			-- But you should be aware of the implications:
			-- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
			-- runInTerminal = false,
		},
	}
end ]]
--[[ return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
  },
  config = function()
    local dap, dapui = require("dap"), require("dapui")

    dapui.setup()

    bindings(dap, dapui)
    init_adapters(dap)
    rust_config(dap)
  end,
} ]]
