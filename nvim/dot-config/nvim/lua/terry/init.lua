require("terry.remap")
require("terry.vim-options")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)


local opts = {}



-- Lazy Package Manager
require("lazy").setup("plugins")

vim.cmd.colorscheme "nord"
-- vim.cmd.colorscheme "catppuccin-macchiato"
-- Quickshot customization
-- local colors = require("catppuccin.palettes").get_palette()
-- vim.api.nvim_set_hl(0, 'QuickScopePrimary', { fg = colors.blue, bold=true, underline=true, })
-- vim.api.nvim_set_hl(0, 'QuickScopeSecondary', { fg = colors.pink, bold=true, underline=true, })


vim.cmd[[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
augroup END
]]
