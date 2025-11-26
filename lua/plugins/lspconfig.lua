return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    -- local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local lsps = require("core.lsps")

    for _, servers in pairs(lsps) do
      for _, server in ipairs(servers) do
            local name = server[2]
            local opts = server[3]

            vim.lsp.config(name, opts)
            vim.lsp.enable(name)
      end
    end
  end,
}
