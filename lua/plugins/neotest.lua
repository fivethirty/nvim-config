return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-neotest/neotest-golang",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		{ "fredrikaverpil/neotest-golang", version = "*" },
	},
	config = function()
		local opts = {
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
			log_level = vim.log.levels.WARN,
			go_test_args = {},
		}
		require("neotest").setup({
			adapters = {
				require("neotest-golang")(opts),
			},
		})

		vim.keymap.set("n", "<leader>nr", "<cmd>lua require('neotest').run.run()<cr>", { desc = "Test nearest" })
		vim.keymap.set(
			"n",
			"<leader>tt",
			"<cmd>lua require('neotest').summary.toggle()<cr>",
			{ desc = "Toggle test window" }
		)
	end,
}
