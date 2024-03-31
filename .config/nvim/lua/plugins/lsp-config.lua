return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {"lua_ls", "gradle_ls", "groovyls", "tsserver", "rust_analyzer", "kotlin_language_server"}
			})
		end
	},
	{
		url = "https://gitlab.com/schrieveslaach/sonarlint.nvim.git"
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require('lspconfig')
			lspconfig.lua_ls.setup({})
			lspconfig.gradle_ls.setup({})
			lspconfig.groovyls.setup({
				cmd = {"java", "-jar", os.getenv("GROOVY_LS_JAR") },
				filetypes = {"groovy", "gradle"},
			})
			lspconfig.tsserver.setup({})
			require('sonarlint').setup({
				server = {
					cmd = {
						'sonarlint-language-server',
						'-stdio',
						'-analyzers',
						vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarpython.jar"),
						vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarcfamily.jar"),
						vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarjava.jar"),
					}
				},
				filetypes = {
					--'python',
					--'cpp',
					'java',
				}
			})
			lspconfig.rust_analyzer.setup({})
      lspconfig.kotlin_language_server.setup({})

		end
	}
}
