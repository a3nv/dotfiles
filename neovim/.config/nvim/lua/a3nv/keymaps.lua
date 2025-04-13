-- Set leader key
vim.g.mapleader = " "

-- Custom key mappings
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open Ex mode with [P]roject [V]iew" })
vim.keymap.set("n", "<leader>tt", ":NvimTreeFocus<CR>", { desc = "Focus NvimTree" })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>gc', '<Cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>', { noremap = true, silent = true })
