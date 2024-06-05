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

