-- PURPOSE: nvim-tree.nvim
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- PURPOSE: preferences
-- tab width
vim.opt.tabstop = 4 -- A TAB character looks like 4 spaces
vim.opt.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.opt.shiftwidth = 4 -- Number of spaces inserted when indenting
vim.opt.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
-- line numbers
vim.opt.number = true
-- remove ~ from end
vim.opt.fillchars = {eob = " "}
-- add cursor past end of line
vim.opt.virtualedit:append("onemore")
-- text search
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- text wrap
vim.opt.wrap = false
-- left column spacing
vim.opt.numberwidth = 2
