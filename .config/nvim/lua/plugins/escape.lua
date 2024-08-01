return {
  'm-gail/escape.nvim',
  config = function()
		-- TODO move to remap file.
    vim.keymap.set({"n", "v"}, "<leader>e", require("escape").escape, { noremap = true, silent = true })
  end

}
