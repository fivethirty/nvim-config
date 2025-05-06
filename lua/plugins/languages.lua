return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			ensure_installed = {
				"lua",
				"go",
				"gomod",
				"gosum",
				"gotmpl",
				"javascript",
				"html",
				"css",
				"bash",
				"terraform",
			},
			highlight = { enable = true },
			indent = { enable = true },
		},
	},
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
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			-- lua
			--	vim.lsp.config("lua-language-server", {
			--capabilities = capabilities,
			-- })
			-- vim.lsp.enable("lua-language-server")

			-- lspconfig.lua_ls.setup({
			-- 		capabilities = capabilities,
			--	})

			-- go
			lspconfig.gopls.setup({
				capabilities = capabilities,
			})

			-- bash
			lspconfig.bashls.setup({
				capabilities = capabilities,
			})

			-- css
			lspconfig.cssls.setup({
				capabilities = capabilities,
			})

			-- [java|type]script
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})

			-- html
			lspconfig.html.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.implementation, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
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
						cwd = require("conform.util").root_file({
							".prettierrc",
							".prettierrc.json",
							".prettierrc.js",
							".prettierignore",
						}),
					},
					stylua = {
						require_cwd = true,
						cwd = require("conform.util").root_file({
							".stylua.toml",
							"stylua.toml",
						}),
					},
				},
				formatters_by_ft = {
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
