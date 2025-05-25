vim.lsp.config["sql-language-server"] = {
	cmd = { "sql-language-server", "up", "--method", "stdio" },
	filetypes = { "sql" },
	root_markers = { ".git" },
	settings = {
		sql = {},
	},
}

vim.lsp.enable("sql-language-server")
