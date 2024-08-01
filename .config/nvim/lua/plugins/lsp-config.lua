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
        ensure_installed = {
          "lua_ls",
          "gradle_ls",
          "groovyls",
          "tsserver",
          "rust_analyzer",
          "kotlin_language_server",
          "lemminx",
          "pyright"
        }
			})
		end
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
			lspconfig.rust_analyzer.setup({})
      lspconfig.kotlin_language_server.setup({})
      lspconfig.pyright.setup({})
      lspconfig.lemminx.setup({
        cmd = {
          "java",
          "-cp",
          "/Users/terry/github/lemminx/org.eclipse.lemminx/target/org.eclipse.lemminx-uber.jar:/Users/terry/ibm/urest-lemminx/lib/build/libs/*",
          "org.eclipse.lemminx.XMLServerLauncher"
        },
        settings = {
          xml= {
            catalogs = {
              "/Users/terry/ibm/urest-lemminx/catalog/urest_catalog_v1.xml",
              "/Users/terry/ibm/urest-lemminx/catalog/urest_catalog_v2.xml",
              "/Users/terry/ibm/urest-lemminx/catalog/urest_catalog_param_v1.xml",
              "/Users/terry/ibm/urest-lemminx/catalog/urest_catalog_param_v2.xml",
            },
            extension = {
              jars = {
                "/Users/terry/ibm/urest-lemminx/lib/build/libs/lib.jar"
              },
            },
          }
        }
      })


		end
	},
  {
    url = "https://gitlab.com/schrieveslaach/sonarlint.nvim.git",
    config = function()
      -- I dont know why $MASON doesnt always evaluatei, so i hard coded it.
      local masonPath = '/Users/terry/.local/share/nvim/mason'
      require('sonarlint').setup({
        server = {
          cmd = {
            os.getenv("JAVA_SE_17") .. '/bin/java',
            '-jar',
            -- vim.fn.expand('$MASON/packages/sonarlint-language-server/extension/server/sonarlint-ls.jar'),
            vim.fn.expand(masonPath .. '/packages/sonarlint-language-server/extension/server/sonarlint-ls.jar'),
            '-stdio',
            '-analyzers',
            -- vim.fn.expand('$MASON/share/sonarlint-analyzers/sonarjava.jar'),
            vim.fn.expand(masonPath .. '/share/sonarlint-analyzers/sonarjava.jar'),
          },
        },
        filetypes = {
          'java',
        }
      })
    end
  },
}
