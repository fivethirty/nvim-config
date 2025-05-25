vim.lsp.config["lua-language-server"] = {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = { ".luarc.json" },
}
vim.lsp.enable("lua-language-server")
