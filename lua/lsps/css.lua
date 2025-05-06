vim.lsp.config["vscode-css-language-server"] = {
	cmd = { "vscode-css-language-server", "--stdio" },
	filetypes = { "css" },
	init_options = { provideFormatter = true },
	root_markers = { ".git" },
	settings = {
		css = { validate = true },
	},
}

vim.lsp.enable("vscode-css-language-server")
