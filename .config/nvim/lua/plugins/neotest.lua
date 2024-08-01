--TODO remove this. vimtest is the way forward
return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    --"rcasia/neotest-java",
    -- { dir = "~/Workspaces/github/neotest-java" }
    -- temporarily use my fork since neo-test cant handle multimodule with gradle wrapper projects.
    { "terrylockett/neotest-java", branch = "multimodule-fix" }
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-java")({
          ignore_wrapper = false, -- whether to ignore maven/gradle wrapper
        })
      }
    })
  end,
}
