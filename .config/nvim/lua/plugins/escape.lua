return {
	'm-gail/escape.nvim',
	config = function()
		-- TODO move to remap file.
		vim.keymap.set({"n", "v"}, "<leader>ee", require("escape").escape, { noremap = true, silent = true })
	end

}
