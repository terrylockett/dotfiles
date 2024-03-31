return 	{
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		local catConfig = require("catppuccin")
		catConfig.setup({
			-- Latte, Frappe, Macchiato, Mocha
			flavour = "Macchiato"
		})

		vim.cmd.colorscheme "catppuccin"
	end

}


