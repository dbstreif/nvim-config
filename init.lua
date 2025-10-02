-- Vim Configs
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.opt.relativenumber = true
vim.opt.spelllang = 'en_us'
vim.opt.spell = false
vim.g.mapleader = ' ' 
vim.opt.mouse = ""
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', opts)

-- Plugin Configs

require("config.lazy")


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


local config = require("nvim-treesitter.configs")
config.setup({
	 ensure_installed = { 
                "python", 
                "c", 
                "lua", 
                "vim", 
                "vimdoc", 
                "query", 
                "elixir", 
                "heex", 
                "javascript", 
                "html", 
                "java", 
                "cpp",
                "rust"
            },

	 highlight = { enable = true},
	 indent = { enable = true},
})


local cmp = require('cmp')
local select_opts = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
    {name = 'buffer'},
  },
  mapping = {
    ['<S-Tab>'] = cmp.mapping.select_next_item(select_opts),
    ['<Tab>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }),
  },
})

require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here 
  -- with the ones you want to install
    ensure_installed = {"clangd", "jedi_language_server", "clangd", "jdtls"}, 
    handlers = {
    function(server_name)
      vim.lsp.config(server_name).setup({})
    end,
  },
})
