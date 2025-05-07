return {
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"nvim-neotest/neotest-golang",
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			{ "fredrikaverpil/neotest-golang", version = "*" },
		},
		config = function()
			require("neotest").setup({
				adapters = {
					require("neotest-golang")({
						discovery = {
							enabled = true,
							concurrent = 0,
						},
						running = {
							concurrent = true,
						},
						summary = {
							animated = true,
						},
						go_test_args = {},
					}),
				},
			})
		end,
		keys = {
			{ "<leader>tt", "<cmd>lua require('neotest').summary.toggle()<cr>", desc = "Toggle test window" },
			{ "<leader>tf", "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", desc = "Run file tests" },
			{ "<leader>tn", "<cmd>lua require('neotest').run.run()<cr>", desc = "Run nearest test" },
			{ "<leader>ts", "<cmd>lua require('neotest').run.stop()<cr>", desc = "Stop running tests" },
			{
				"<leader>to",
				"<cmd>lua require('neotest').output.open({ enter = true })<cr>",
				desc = "Open test output",
			},
			{ "<leader>tp", "<cmd>lua require('neotest').output_panel.toggle()<cr>", desc = "Toggle output panel" },
		},
	},
}
