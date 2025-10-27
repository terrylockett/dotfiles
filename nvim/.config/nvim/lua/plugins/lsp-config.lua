return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			automatic_enable = {
					"lua_ls",
					"gopls",
					"gradle_ls",
					"groovyls",
					-- "tsserver",
					"rust_analyzer",
					-- "kotlin_language_server",
					"lemminx",
					"pyright",
					"taplo", -- toml
					"jsonls",
					"bashls"
			}
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require('lspconfig')
			lspconfig.lua_ls.setup({})
			lspconfig.gopls.setup({})
			lspconfig.gradle_ls.setup({})
			-- lspconfig.tsserver.setup({})
			lspconfig.rust_analyzer.setup({})
			-- lspconfig.kotlin_language_server.setup({})
			lspconfig.pyright.setup({})
			lspconfig.taplo.setup({})
			lspconfig.jsonls.setup({})
			lspconfig.bashls.setup({})
			lspconfig.yamlls.setup({})
		end
	}
}
