-- Return Mason setup servers and LspConfig servers in order of { <masonlsp> <lspconfig-lsp> <lspconfig opts> }
-- use `:help lspconfig-all` to see list of lspconfig-lsp servers
-- user `:Mason` to find valid Mason LSPs

return {
    bash = {
        {"bash-language-server", "bashls", { }}
    },
    java = {
        { "jdtls", "jdtls", { } },
    },
    python = {
        { "jedi-language-server", "jedi_language_server", { } }
    },
    c = {
        { "clangd", "clangd", { } }
    },
    lua = {
        { "lua-language-server", "lua_ls", { } }
    },
    rust = {
        { "rust-analyzer", "rust_analyzer", { } }
    },
}
