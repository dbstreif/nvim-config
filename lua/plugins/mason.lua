return {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
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
        for _, servers in pairs(lsps) do
          for _, server in ipairs(servers) do
            local name = server[1]
            tools[name] = true
          end
        end

        require("mason-tool-installer").setup({
          ensure_installed = vim.tbl_keys(tools),
          run_on_start = true,
        })
    end,
}
