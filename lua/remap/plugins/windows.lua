local function cmd(command)
   return table.concat({ '<Cmd>', command, '<CR>' })
end

vim.keymap.set('n', '<Leader>+', cmd 'WindowsMaximize', { desc = "Windows Max"})
vim.keymap.set('n', '<Leader>_', cmd 'WindowsMaximizeVertically', { desc = "Windows Vert Max" })
vim.keymap.set('n', '<Leader>|', cmd 'WindowsMaximizeHorizontally', { desc = "Windows Hor Max" })
vim.keymap.set('n', '<Leader>=', cmd 'WindowsEqualize', { desc = "Windows Equalize" })
