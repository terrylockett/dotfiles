return {
  'm-gail/escape.nvim',
  -- opts = {}gcc
  config = function()
    local escape = require('escape')
    
    vim.keymap.set({"n", "v"}, "<leader>e", require("escape").escape, { noremap = true, silent = true })

  end

}
