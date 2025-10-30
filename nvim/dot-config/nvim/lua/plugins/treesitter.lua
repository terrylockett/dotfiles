return {
	"nvim-treesitter/nvim-treesitter",
	branch = 'master',
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local tsConfigs = require("nvim-treesitter.configs")
		tsConfigs.setup({
			ensure_installed = {
				"go",
				"lua",
				"markdown",
				"markdown_inline",
			},
			sync_install = false,
			highlight = {
				enable = true
			},
			indent = {
				enable = true
			},
		})
	end
}
