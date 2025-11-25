return {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp"
    },

    config = function()
        local linttypes = require("core.linttypes")

        -- Collect unique tool names (automatically install linters from core.linttypes)
        local tools = {}
        for _, list in pairs(linttypes) do
          for _, tool in ipairs(list) do
            tools[tool] = true
          end
        end


        local lsps = require("core.lsps")

        -- Collect unique tool names (automatically install lsps from core.lsps)
        for _, list in pairs(lsps) do
          for _, tool in ipairs(list) do
            tools[tool] = true
          end
        end

        require("mason-tool-installer").setup({
          ensure_installed = vim.tbl_keys(tools),
          run_on_start = true,
        })
    end,
}
