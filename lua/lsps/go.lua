vim.lsp.config["gopls"] = {
	cmd = { "gopls" },
	filetypes = { "go", "gomod", "gowork", "gotmpl" },
	root_markers = { "go.mod" },
}

vim.lsp.enable("gopls")

vim.lsp.config["golangci-lint-langserver"] = {
	cmd = { "golangci-lint-langserver" },
	filetypes = { "go", "gomod" },
	init_options = {
		command = { "golangci-lint", "run", "--output.json.path=stdout", "--show-stats=false" },
	},
	root_markers = { "go.mod" },
}

vim.lsp.enable("golangci-lint-langserver")
