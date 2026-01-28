return {
	{
		"nvim-telescope/telescope.nvim", tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require('telescope.builtin')
			-- TODO move to rempa file
			vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
			vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
			vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
			vim.keymap.set('n', '<leader>fz', builtin.spell_suggest, { desc = 'Telescope spell' })
			vim.keymap.set('n', '<leader>fm', builtin.marks, { desc = 'Telescope marks' })
			vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = 'Telescope diagnostics' })
			vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, { desc = 'Telescope doc symbols' })
			vim.keymap.set('n', '<leader>fgr', builtin.lsp_references, { desc = 'Telescope doc symbols' })


			vim.keymap.set('n', '<leader>fj', builtin.jumplist, { desc = 'Telescope jump list' })
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
