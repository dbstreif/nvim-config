return {
    python = { "pylint" },
    cpp = { "cpplint" },
    javascript = { "eslint_d" },
    ansible = { "ansible-lint" },
    bash = { "shellcheck" },
    sh = { "shellcheck" },

    ["_"] = { "typos" }, -- fallback when nothing else matches
}
