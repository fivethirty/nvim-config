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
			highlight_hidden = "name",
			icons = {
				diagnostics_placement = "after",
			},
		},
		update_focused_file = {
			enable = true,
		},
	},
	keys = {
		{ "<leader>ft", ":NvimTreeToggle<CR>", desc = "NvimTree toggle filesystem" },
	},
}
