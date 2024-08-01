vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=4")
vim.cmd("set noexpandtab") -- tabs goat 
vim.cmd("set smartindent")

-- Set listchars
vim.opt.listchars = {
  eol = '¶',
  space = "·",
	tab = '» ',
  trail = '·',
  extends = '›',
  precedes = '‹'
}
vim.opt.list = true

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


