return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lsps = require("core.lsps")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    for _, servers in pairs(lsps) do
      for _, server in ipairs(servers) do
            local name = server[2]
            local opts = server[3]

            -- Force cmp_nvim_lsp default_capabilities for opts.capabilities extension
            opts.capabilities = vim.tbl_deep_extend(
                "force",
                opts.capabilities or {},
                capabilities
            )

            vim.lsp.config(name, opts)
            vim.lsp.enable(name)
      end
    end
  end,
}
