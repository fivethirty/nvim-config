return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				-- lua
				"lua-language-server",
				"stylua",

				-- go
				"gopls",
				"delve",

				-- bash
				-- the language server uses shfmt and shellcheck
				-- if present so no need to use them directly
				"bash-language-server",
				"shfmt",
				"shellcheck",

				-- css
				"css-lsp",

				-- [java|type]script
				"typescript-language-server",
				"eslint-lsp",

				-- html
				"html-lsp",

				-- prettier
				"prettier",
			},
		},
	},
	{
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local conform = require("conform")
			local util = require("conform.util")
			conform.setup({
				formatters = {
					prettier = {
						require_cwd = true,
						cwd = util.root_file({
							".prettierrc",
							".prettierrc.json",
							".prettierrc.js",
							".prettierignore",
						}),
					},
					stylua = {
						require_cwd = true,
						cwd = util.root_file({
							".stylua.toml",
							"stylua.toml",
						}),
					},
				},
				formatters_by_ft = {
					go = { "golines" },
					lua = { "stylua" },
					javascript = { "prettier" },
					typescript = { "prettier" },
					css = { "prettier" },
					html = { "prettier" },
					yaml = { "prettier" },
					json = { "prettier" },
					markdown = { "prettier" },
				},
				format_on_save = {
					lsp_fallback = true,
					async = false,
					timeout_ms = 500,
				},
			})
		end,
	},
}
