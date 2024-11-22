require("a3nv")
-- Show whitespace characters
vim.opt.list = true
vim.opt.listchars = {
    tab = '>~',
    trail = '~',
    extends = '>',
    precedes = '<',
    space = '·',
    eol = '¬'
}
-- Enable relative numbering
vim.opt.relativenumber = true
-- Show the actual number for the current line
vim.opt.number = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
