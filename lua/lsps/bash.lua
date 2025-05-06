local capabilities = require("cmp_nvim_lsp").default_capabilities()
vim.lsp.config["bash-language-server"] = {
	capabilities = capabilities,
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
