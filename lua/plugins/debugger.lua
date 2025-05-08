return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"leoluz/nvim-dap-go",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")

			require("dapui").setup()
			require("dap-go").setup()

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
		end,
		keys = {
			{
				"<leader>db",
				"<cmd>lua require('dap').toggle_breakpoint()<cr>",
				desc = "Toggle Breakpoint",
			},
			{
				"<leader>dc",
				"<cmd>lua require('dap').continue()<cr>",
				desc = "Continue",
			},
			{
				"<leader>do",
				"<cmd>lua require('dap').step_over()<cr>",
				desc = "Step Over",
			},
			{
				"<leader>di",
				"<cmd>lua require('dap').step_into()<cr>",
				desc = "Step Into",
			},
			{
				"<leader>do",
				"<cmd>lua require('dap').step_out()<cr>",
				desc = "Step Out",
			},
			{
				"<leader>dr",
				"<cmd>lua require('dap').repl.open()<cr>",
				desc = "Open REPL",
			},
			{
				"<leader>dt",
				"<cmd>lua require('dap').terminate()<cr>",
				desc = "Terminate Debugger",
			},
		},
	},
}
