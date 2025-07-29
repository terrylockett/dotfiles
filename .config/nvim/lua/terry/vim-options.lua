vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=4")
vim.cmd("set noexpandtab") -- tabs goat 
vim.cmd("set smartindent")


-- diagnostics only on current line.
vim.diagnostic.config({
	virtual_text = false,

	virtual_lines = {
		current_line = true,
	},
})

-- border for popup windows
vim.o.winborder = 'rounded'


-- Show whitespace characters
vim.opt.listchars = {
	-- eol = '¶',
	space = "·",
	tab = '» ',
	trail = '·',
	extends = '›',
	precedes = '‹'
}
vim.opt.list = true

-- Treesitter folding 
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.foldlevelstart = 99 -- This should be enough.

-- Confirm to save changes before exiting modified buffer
vim.opt.confirm = true

vim.opt.smoothscroll = true

-- vim spell check (z= for suggestions)(zg add to dict)
vim.opt.spelllang = 'en_us'
vim.opt.spell = true

-- 24 bit color bby
vim.opt.termguicolors = true

-- relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- incremental search
vim.opt.incsearch = true

-- always enable sign column to prevent screen "jumping"
vim.opt.signcolumn = "yes"

-- system clip board
vim.opt.clipboard = "unnamed,unnamedplus"

-- cursor line highlight
vim.opt.cursorline = true

-- keep cursor 8 lines in
vim.opt.scrolloff = 8

-- column width line
vim.opt.colorcolumn = "100"


