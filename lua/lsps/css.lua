local capabilities = require("cmp_nvim_lsp").default_capabilities()
vim.lsp.config["vscode-css-language-server"] = {
	capabilities = capabilities,
	cmd = { "vscode-css-language-server", "--stdio" },
	filetypes = { "css" },
	init_options = { provideFormatter = true },
	root_markers = { ".git" },
	settings = {
		css = { validate = true },
	},
}

vim.lsp.enable("vscode-css-language-server")
