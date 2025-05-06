vim.lsp.config["bash-language-server"] = {
	cmd = { "bash-language-server", "start" },
	settings = {
		bashIde = {
			globPattern = "*@(.sh|.zsh)",
		},
	},
	filetypes = { "bash", "sh", "zsh" },
	root_markers = { ".git" },
}

vim.lsp.enable("bash-language-server")
