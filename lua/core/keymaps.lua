-- Telescope keymaps --
local map = vim.keymap.set

map("n", "<leader>ff", function()
  require("telescope.builtin").find_files()
end)

map("n", "<leader>fg", function()
  require("telescope.builtin").live_grep()
end)

map("n", "<leader>fb", function()
  require("telescope.builtin").buffers()
end)

map("n", "<leader>fh", function()
  require("telescope.builtin").help_tags()
end)



-- LSP keymaps --
map("n", "gd", function()
  require("vim.lsp.buf").definition()
end, { desc = "LSP: Go to definition" })

map("n", "gr", function()
  require("vim.lsp.buf").references()
end, { desc = "LSP: Go to references" })

map("n", "K", function()
  require("vim.lsp.buf").hover()
end, { desc = "LSP: Hover documentation" })

map("n", "gi", function()
  require("vim.lsp.buf").implementation()
end, { desc = "LSP: Go to implementation" })



-- Vim Diagnostics -- 
map("n", "gl", function()
  require("vim.diagnostic").open_float()
end, { desc = "Diagnostics: Show line diagnostics" })

map("n", "]d", function()
  require("vim.diagnostic").goto_next()
end, { desc = "Diagnostics: Next diagnostic" })

map("n", "[d", function()
  require("vim.diagnostic").goto_prev()
end, { desc = "Diagnostics: Previous diagnostic" })


-- yanky keymaps can be found in nvim/lua/plugins/yanky.lua
