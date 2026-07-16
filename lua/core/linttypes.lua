return {
    cmake = { "cmakelang" },
    make = { "checkmake" },
    python = { "ruff" },
    cpp = { "cpplint" },
    lua = { "luacheck" },
    javascript = { "eslint_d" },
    ansible = { "ansible-lint" },
    bash = { "shellcheck" },
    sh = { "shellcheck" },

    ["_"] = { "typos" }, -- fallback when nothing else matches
}
