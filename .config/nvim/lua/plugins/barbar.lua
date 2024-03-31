return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("barbar").setup({
			icons = {
				-- default, powerline, slanted
				preset = 'default',
			},
			sidebar_filetypes = {
				NvimTree = true,
				['neo-tree'] = {event = 'BufWipeout'}
			},
		})
	end
}
