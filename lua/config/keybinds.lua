vim.g.mapleader = " "
vim.keymap.set("n", "<leader>o", ":Oil<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "]q", ":cnext<CR>", { desc = "Next Quickfix" })
vim.keymap.set("n", "[q", ":cprev<CR>", { desc = "Prev Quickfix" })
