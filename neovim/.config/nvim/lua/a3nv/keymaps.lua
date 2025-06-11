-- Set leader key
vim.g.mapleader = " "

-- Custom key mappings
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open Ex mode with [P]roject [V]iew" })
vim.keymap.set("n", "<leader>tt", ":NvimTreeFocus<CR>", { desc = "Focus NvimTree" })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>gc', '<Cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>9", ":vertical resize +5<CR>", { desc = "Increase sidebar width" })
vim.keymap.set("n", "<leader>0", ":vertical resize -5<CR>", { desc = "Decrease sidebar width" })

