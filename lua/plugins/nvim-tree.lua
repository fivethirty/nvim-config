return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			diagnostics = {
				enable = true,
				show_on_dirs = true,
			},
		})
		vim.keymap.set("n", "<C-f>", ":NvimTreeToggle<CR>", { desc = "NvimTree toggle filesystem" })
	end,
}
