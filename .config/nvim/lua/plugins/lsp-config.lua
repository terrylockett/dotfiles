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
			lspconfig.groovyls.setup({
				cmd = {"java", "-jar", os.getenv("GROOVY_LS_JAR") },
				filetypes = {"groovy", "gradle"},
			})
			-- lspconfig.tsserver.setup({})
			lspconfig.rust_analyzer.setup({})
			-- lspconfig.kotlin_language_server.setup({})
			lspconfig.pyright.setup({})
			lspconfig.taplo.setup({})
			lspconfig.jsonls.setup({})
			lspconfig.bashls.setup({})
			lspconfig.yamlls.setup({})
			lspconfig.lemminx.setup({
				cmd = {
					-- "java",
					os.getenv("JAVA_SE_17") .. '/bin/java',
					-- "-Dorg.eclipse.wildwebdeveloper.xml.internal.XMLLanguageServer.log.level=FINER",
					"-cp",
					"/Users/terry/github/lemminx/org.eclipse.lemminx/target/org.eclipse.lemminx-uber.jar:/Users/terry/ibm/urest-lemminx/lib/build/libs/lib-all.jar",
					"org.eclipse.lemminx.XMLServerLauncher",
				},
				settings = {
					xml= {
						trace = {
							server = "verbose",
							client = "verbose"
						},
						logs = {
							client = true,
							server = true,
							file = "/Users/terry/dev/lsp4xml.log"
						},
						catalogs = {
							"/Users/terry/ibm/urest-lemminx/catalog/urest_catalog_v1.xml",
							"/Users/terry/ibm/urest-lemminx/catalog/urest_catalog_v2.xml",
							"/Users/terry/ibm/urest-lemminx/catalog/urest_catalog_param_v1.xml",
							"/Users/terry/ibm/urest-lemminx/catalog/urest_catalog_param_v2.xml",
						},
						extension = {
							jars = {
								"/Users/terry/ibm/urest-lemminx/lib/build/libs/lib-all.jar",
							},
						},
						completion= {
							autoCloseTags = true,
							autoCloseRemovesContent = true,
							triggerCharacters = {"{"}
						},
					}
				}
			})


		end
	},
	-- {
	-- 	url = "https://gitlab.com/schrieveslaach/sonarlint.nvim.git",
	-- 	config = function()
	-- 		-- I dont know why $MASON doesnt always evaluatei, so i hard coded it.
	-- 		local masonPath = '/Users/terry/.local/share/nvim/mason'
	-- 		require('sonarlint').setup({
	-- 			server = {
	-- 				cmd = {
	-- 					os.getenv("JAVA_SE_17") .. '/bin/java',
	-- 					'-jar',
	-- 					-- vim.fn.expand('$MASON/packages/sonarlint-language-server/extension/server/sonarlint-ls.jar'),
	-- 					vim.fn.expand(masonPath .. '/packages/sonarlint-language-server/extension/server/sonarlint-ls.jar'),
	-- 					'-stdio',
	-- 					'-analyzers',
	-- 					-- vim.fn.expand('$MASON/share/sonarlint-analyzers/sonarjava.jar'),
	-- 					vim.fn.expand(masonPath .. '/share/sonarlint-analyzers/sonarjava.jar'),
	-- 				},
	-- 			},
	-- 			filetypes = {
	-- 				'java',
	-- 			}
	-- 		})
	-- 	end
	-- },
}
