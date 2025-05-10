vim.api.nvim_create_autocmd("LspAttach", {
	desc = "LSP Actions",
	callback = function(event)
		local opts = {
			buffer = event.buf,
		}
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "gd", vim.lsp.buf.implementation, opts)
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		vim.keymap.set("n", "go", vim.lsp.buf.type_definition, opts)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
		vim.keymap.set("n", "gs", vim.lsp.buf.signature_help, opts)
		vim.keymap.set("n", "<leader>re", vim.lsp.buf.rename, opts)
		vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
		vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
	end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
	desc = "Organize Imports",
	pattern = "*.go",
	callback = function()
		vim.lsp.buf.code_action({
			context = {
				only = { "source.organizeImports" },
				diagnostics = {},
			},
			apply = true,
		})
	end,
})
