return {
  -- "vim-test/vim-test",

  "terrylockett/vim-test",
  branch = "fix-composite-project-tests",

  -- dir = "/Users/terry/github/vim-test" , -- local dev

  dependencies = {
    "preservim/vimux"
  },
  config = function()
    vim.keymap.set("n", "<leader>tm", ":TestNearest<CR>", {})
    vim.keymap.set("n", "<leader>tf", ":TestFile<CR>", {})
    vim.keymap.set("n", "<leader>ta", ":TestSuite<CR>", {})
    vim.keymap.set("n", "<leader>tl", ":TestLast<CR>", {})
		-- run tests in tmux pane.
    vim.cmd("let test#strategy = 'vimux'")
  end,
}
