return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	main = "nvim-treesitter.configs",
	opts = {
		ensure_installed = {
			"lua",
			"go",
			"gomod",
			"gosum",
			"gotmpl",
			"javascript",
			"html",
			"css",
			"bash",
			"terraform",
		},
		highlight = { enable = true },
		indent = { enable = true },
	},
}
