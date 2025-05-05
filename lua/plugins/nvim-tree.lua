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
		vim.keymap.set("n", "<leader>ff", ":NvimTreeToggle<CR>", { desc = "NvimTree toggle filesystem" })
		if vim.fn.argc(-1) == 0 then
			vim.cmd("NvimTreeOpen")
		end
	end,
}
