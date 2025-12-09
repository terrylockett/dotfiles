vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Markdown-preview
vim.keymap.set("n", "<leader>mp", ":MarkdownPreview<CR>")

-- Toggle spelling
vim.keymap.set('n', '<Leader>z', function() vim.opt.spell = not(vim.opt.spell:get()) end)

-- Toggle Inlay Hints
vim.keymap.set("n", "<leader>i", function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()) end )


-- JDTLS
vim.keymap.set('n', '<M-r>', function() require("jdtls").update_project_config({select_mode="all"}) end)
vim.keymap.set('n', '<M-~>', function() require('jdtls.setup').wipe_data_and_restart()  end)

vim.keymap.set('n', '<leader>gf', function() vim.lsp.buf.format( {
  filter = function(client) return client.name ~= 'jdtls' end
}) end, {})

-- NeoTree
vim.keymap.set("n", "<leader>nn", ":Neotree filesystem reveal<CR>")
vim.keymap.set("n", "<leader>nN", ":Neotree filesystem close<CR>")

-- UndoTree
vim.keymap.set('n', '<leader>ut', vim.cmd.UndotreeToggle)

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
vim.keymap.set("n", "<leader>djp", function() require'jdtls'.pick_test() end)

vim.keymap.set("n", "<leader>djt", function() require'jdtls'.test_nearest_method({
	config_overrides={cwd="/Users/terry/ibm/scanners/master"}
}) end)

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
vim.keymap.set('n', '<Tab>', '<Cmd>BufferNext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', { noremap = true, silent = true })

	-- reorder tabs
vim.keymap.set('n', '<M-l>', '<Cmd>BufferMoveNext<CR>', {})
vim.keymap.set('n', '<M-h>', '<Cmd>BufferMovePrevious<CR>', {})
	--close Buffer
vim.keymap.set('n', '<M-w>', '<Cmd>BufferClose<CR>', {})

