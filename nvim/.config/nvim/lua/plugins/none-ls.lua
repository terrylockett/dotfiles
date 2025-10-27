return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- java
        null_ls.builtins.formatting.google_java_format,
      },
    })
  end
}
