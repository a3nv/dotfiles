require("a3nv.lazy")
require("a3nv.keymaps")
vim.o.laststatus = 2

vim.cmd.colorscheme "catppuccin-mocha"

vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })

