return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",

  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "python",
        "javascript",
        "typescript",
        "html",
        "css",
        "bash",
        "json",
        "markdown",
        "c", 
        "vim", 
        "vimdoc", 
        "query", 
        "elixir", 
        "heex", 
        "java", 
        "cpp",
        "rust"
      },

      highlight = { enable = true },
      indent = { enable = true },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "gnn",
          node_incremental = "grn",
          node_decremental = "grm",
        },
      },

      autotag = { enable = true },
    })
  end
}
