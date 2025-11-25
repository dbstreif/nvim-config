return {
    python = { "jdtls", "jedi-language-server" },
    c = { "clangd" },
    lua = { "lua-language-server" },
    rust = { "rust-analyzer" },

    ["_"] = { "typos" }, -- fallback when nothing else matches
}
