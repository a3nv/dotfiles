print('main init.lua loaded')

-- Basic neovim config
require('a3nv')
require('a3nv.remap')
-- set line numbers
vim.opt.number = true

-- enable syntax highlighting
vim.cmd 'syntax on'


-- set tab width
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true


