return {
  "nvim-telescope/telescope.nvim",
  tag = "v0.1.9",
  dependencies = { "nvim-lua/plenary.nvim" },

  config = function()
    local telescope = require("telescope")
    telescope.setup({})
  end
}
