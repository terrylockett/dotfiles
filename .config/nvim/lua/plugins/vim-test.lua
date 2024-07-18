return {
  -- "vim-test/vim-test",
  -- { "terrylockett/vim-test", branch = "force-gradle-wrapper" },
  "terrylockett/vim-test", 
  branch = "force-gradle-wrapper",
  dependencies = {
    "preservim/vimux"
  },
  config = function()
    vim.keymap.set("n", "<leader>t", ":TestNearest<CR>", {})
    vim.keymap.set("n", "<leader>T", ":TestFile<CR>", {})
    vim.keymap.set("n", "<leader>ta", ":TestSuite<CR>", {})
    vim.keymap.set("n", "<leader>tl", ":TestLast<CR>", {})
    -- vim.keymap.set("n", "<leader>g", ":TestVisit<CR>", {})
    vim.cmd("let test#strategy = 'vimux'")
  end,
}
