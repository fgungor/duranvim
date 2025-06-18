vim.g.mapleader = " "
vim.keymap.set("n", "<leader>o", ":Oil<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "]q", ":cnext<CR>", { desc = "Next Quickfix" })
vim.keymap.set("n", "[q", ":cprev<CR>", { desc = "Prev Quickfix" })
vim.keymap.set("n", "<leader>tt", ":OverseerToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>mc", ":CMakeGenerate<CR>", { noremap = true })
vim.keymap.set("n", "<leader>mb", ":CMakeBuild<CR>", { noremap = true })
vim.keymap.set("n", "<leader>md", ":CMakeDebug<CR>", { noremap = true })
