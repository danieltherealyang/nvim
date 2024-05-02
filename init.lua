require("config")
require("config.remap")
require("config.packer")
vim.opt.tabstop = 2 -- A TAB character looks like 4 spaces
vim.opt.softtabstop = 2 -- Number of spaces inserted instead of a TAB character
vim.opt.shiftwidth = 2 -- Number of spaces inserted when indenting
vim.opt.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.wo.number = true
vim.opt.fillchars = {eob = " "}
vim.opt.virtualedit:append("onemore")
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.cmd([[
  augroup MoveCursorOnInsertLeave
    autocmd!
    autocmd InsertLeave * :normal! `^
  augroup END
]])
