vim.api.nvim_create_autocmd("FileType", {
	pattern = "go",
	command = "setlocal tabstop=4 shiftwidth=4",
})

vim.api.nvim_create_autocmd("LspAttach", {
	desc = "LSP Actins",
	callback = function(event)
		local opts = {
			buffer = event.buf,
		}
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "gd", vim.lsp.buf.implementation, opts)
		vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
	end,
})
