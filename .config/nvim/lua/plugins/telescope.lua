return {
	{
		"nvim-telescope/telescope.nvim", tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require('telescope.builtin')
			-- TODO move to rempa file
			vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
		end
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup {
				defaults = {
					mappings = {
						i = {
							['<C-p>'] = require('telescope.actions.layout').toggle_preview
						}
					},
				},

				preview = {
					-- hide_on_startup = true
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown {
						}
					}
				},
				pickers = {
					find_files = {
						hidden = true
					}
				}
			}
			require("telescope").load_extension("ui-select")
		end
	}
}
