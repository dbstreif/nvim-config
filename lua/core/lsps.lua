-- Return Mason setup servers and LspConfig servers in order of { <masonlsp> <lspconfig-lsp> <lspconfig opts> }

return {
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
