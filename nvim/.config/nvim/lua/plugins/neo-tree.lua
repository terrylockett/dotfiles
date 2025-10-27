return 	{
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			close_if_last_window = false,
			popup_border_style = "rounded",
			default_component_configs = {
				file_size = {
					enabled = false,
				},
				last_modified = {
					enabled = false,
				},
			},
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
					hide_gitignored = true,
				},
				follow_current_file = {
					enabled = true,
					leave_dirs_open=false,
				},
				group_empty_dirs = true,
				scan_mode = "deep",
			},
			source_selector = {
				winbar = true,
				statusline = true,
			},
			window = {
				position = "right",
				auto_expand_width = false,
			},
		})
	end
}

