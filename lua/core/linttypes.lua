return {
    cmake = { "cmakelang" },
    make = { "checkmake" },
    python = { "pylint" },
    cpp = { "cpplint" },
    lua = { "luacheck" },
    javascript = { "eslint_d" },
    ansible = { "ansible-lint" },
    bash = { "shellcheck" },
    sh = { "shellcheck" },

    ["_"] = { "typos" }, -- fallback when nothing else matches
}
