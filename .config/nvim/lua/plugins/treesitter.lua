return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local tsConfigs = require("nvim-treesitter.configs")
		tsConfigs.setup({
			ensure_installed = {
				"java",
				"kotlin",
				"groovy",
				"lua",
				"vim",
				"vimdoc",
				"javascript",
				"typescript",
        "markdown",
        "toml",
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
