--local capabilities = require("cmp_nvim_lsp").default_capabilities()
vim.lsp.config["lua-language-server"] = {
	--	capabilities = capabilities,
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = { ".luarc.json" },
}
vim.lsp.enable("lua-language-server")
