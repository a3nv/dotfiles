require("a3nv.remap")
require("a3nv.packer")
require("a3nv.nvim-tree")
require("a3nv.indent")
vim.g.user42 = 'iasonov'
vim.g.mail42 = 'iasonov@student.42prague.com'

vim.o.laststatus = 2

vim.cmd.colorscheme "catppuccin-mocha"

vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })

