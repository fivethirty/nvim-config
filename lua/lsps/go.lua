local capabilities = require("cmp_nvim_lsp").default_capabilities()
vim.lsp.config["gopls"] = {
	capabilities = capabilities,
	cmd = { "gopls" },
	filetypes = { "go", "gomod", "gowork", "gotmpl" },
	root_markers = { "go.mod" },
}

vim.lsp.enable("gopls")
