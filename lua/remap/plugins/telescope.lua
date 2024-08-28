local builtin = require('telescope.builtin')
local telescope = require('telescope')
telescope.setup {
  pickers = {
    find_files = {
      hidden = true,
      no_ignore = true
    }
  }
}
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find files" })
vim.keymap.set('n', '<leader>fg', function() 
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end, { desc = "Find string" })
