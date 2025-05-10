return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		diagnostics = {
			enable = true,
			show_on_dirs = true,
		},
		view = {
			signcolumn = "no",
		},
		renderer = {
			highlight_diagnostics = "name",
			icons = {
				diagnostics_placement = "after",
			},
		},
		update_focused_file = {
			enable = true,
		},
		filters = {
			git_ignored = true,
			custom = {
				"^\\.git$",
				"^\\.DS_Store$",
			},
		},
	},
	keys = {
		{ "<leader>dd", ":NvimTreeToggle<CR>", desc = "NvimTree toggle filesystem" },
	},
}
