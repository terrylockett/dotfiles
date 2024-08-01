vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Telescope 
-- TODO this doesnt work :(
-- ccim.keymap.set('n', '<C-p>', function() require('telescope.actions.layout').toggle_preview() end)

-- JDTLS
vim.keymap.set('n', '<M-r>', function() require("jdtls").update_project_config({select_mode="all"}) end)
vim.keymap.set('n', '<M-~>', function() require('jdtls.setup').wipe_data_and_restart()  end)

vim.keymap.set('n', '<leader>gf', function() vim.lsp.buf.format( {
  filter = function(client) return client.name ~= 'jdtls' end
}) end, {})

-- NeoTree
vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal left<CR>")
vim.keymap.set("n", "<leader>N", ":Neotree filesystem close<CR>")

-- LSP
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
vim.keymap.set('n', '<leader>o', vim.diagnostic.open_float, {})

-- Trouble
vim.keymap.set('n', '<M-3>', function() require("trouble").toggle() end)

-- Debug Adapter
vim.keymap.set("n", "<leader>db", function() require'dap'.toggle_breakpoint() end)
vim.keymap.set("n", "<leader>dc", function() require'dap'.continue() end)
vim.keymap.set("n", "<leader>djm", function() require'jdtls'.test_nearest_method() end)
vim.keymap.set("n", "<leader>djc", function() require'jdtls'.test_class() end)

-- NeoTest
vim.keymap.set("n", "<leader>tc", function() require("neotest").run.run(vim.fn.expand("%")) end)
vim.keymap.set("n", "<leader>tm", function() require("neotest").run.run() end)
vim.keymap.set("n", "<leader>td", function() require("neotest").run.run({strategy = "dap"}) end)
vim.keymap.set("n", "<leader>ts", function() require("neotest").run.stop() end)

vim.keymap.set("n", "<leader>to", function() require("neotest").output.open() end)
vim.keymap.set("n", "<leader>tp", function() require("neotest").output_panel.toggle() end)
vim.keymap.set("n", "<leader>ts", function() require("neotest").summary.toggle() end)

vim.keymap.set("n", "<leader>tl", function() require("neotest").run.run({vim.fn.expand("%:p:h"), extra_args = {"module"}}) end)

-- BarBar
	-- move tabs 
vim.keymap.set('n', '<leader>,', '<Cmd>BufferPrevious<CR>', {})
vim.keymap.set('n', '<leader>.', '<Cmd>BufferNext<CR>', {})

	-- reorder tabs
vim.keymap.set('n', '<M->>', '<Cmd>BufferMoveNext<CR>', {})
vim.keymap.set('n', '<M-<>', '<Cmd>BufferMovePrevious<CR>', {})
	--close Buffer
vim.keymap.set('n', '<M-w>', '<Cmd>BufferClose<CR>', {})

