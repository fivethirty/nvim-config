vim.g.mapleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.ruler = true
vim.opt.nu = true
vim.opt.mouse = "a"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.fillchars = { eob = " " }

vim.keymap.set("i", "kj", "<Esc>")

vim.diagnostic.config({ virtual_text = true })
