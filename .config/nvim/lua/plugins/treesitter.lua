return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local tsConfigs = require("nvim-treesitter.configs")
		tsConfigs.setup({
			ensure_installed = {
				"java",
				"kotlin",
				"go",
				"groovy",
				"lua",
				"vim",
				"vimdoc",
				"javascript",
				"typescript",
				"markdown",
				"markdown_inline",
				"toml",
				"yaml",
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
