local function cmd(command)
   return table.concat({ '<Cmd>', command, '<CR>' })
end

vim.keymap.set('n', '<Leader>+', cmd 'WindowsMaximize', { desc = "Windows max"})
vim.keymap.set('n', '<Leader>_', cmd 'WindowsMaximizeVertically', { desc = "Windows vert max" })
vim.keymap.set('n', '<Leader>|', cmd 'WindowsMaximizeHorizontally', { desc = "Windows hor max" })
vim.keymap.set('n', '<Leader>=', cmd 'WindowsEqualize', { desc = "Windows equalize" })
