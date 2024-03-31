
--local default_config = require "plugins.configs.lspconfig"
--local jdtls_setup = require "jdtls.setup"
--local data_dir = vim.fn.stdpath "data"
--local home = os.getenv "HOME"

---local jdtls_binary = data_dir .. "/mason/bin/jdtls"
--local root_dir = jdtls_setup.find_root { ".git", "mvnw", "gradlew" }
--local project_name = vim.fn.fnamemodify(root_dir, ":p:h:t")
--local workspace_dir = home .. "/.cache/jdtls/workspace/" .. project_name

return {
	"mfussenegger/nvim-jdtls",
	ft = "java",
	dependencies = { "folke/which-key.nvim", "neovim/nvim-lspconfig" },
}
