-- Set leader key
vim.g.mapleader = " "

-- Custom key mappings
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open Ex mode with [P]roject [V]iew" })
vim.keymap.set("n", "<leader>tt", ":NvimTreeFocus<CR>", { desc = "Focus NvimTree" })

vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>ph", "<cmd>Gitsigns preview_hunk<CR>", opts) -- Preview hunk
vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>bl", "<cmd>Gitsigns blame_line<CR>", opts)   -- Blame line
vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>wd", "<cmd>Gitsigns toggle_word_diff<CR>", opts) -- Toggle word diff
