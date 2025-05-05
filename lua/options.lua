vim.g.mapleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.ruler = true
vim.opt.nu = true
vim.opt.mouse = "a"
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.fillchars = { eob = " " }

vim.keymap.set("i", "kj", "<Esc>")

vim.diagnostic.config({ virtual_text = true })

vim.api.nvim_create_autocmd("FileType", {
	pattern = "go",
	command = "setlocal tabstop=4 shiftwidth=4",
})
