-- Set leader key
vim.g.mapleader = " "

-- Custom key mappings
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open Ex mode with [P]roject [V]iew" })
vim.keymap.set("n", "<leader>tt", ":NvimTreeFocus<CR>", { desc = "Focus NvimTree" })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float)

