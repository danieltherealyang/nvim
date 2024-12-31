local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<Leader>a", function() harpoon:list():add() print("Added to Harpoon") end, { desc = "Harpoon add buffer" })
vim.keymap.set("n", "<Leader><Tab>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon open menu" })

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<Leader>h", function() harpoon:list():prev() end, { desc = "Harpoon toggle previous" })
vim.keymap.set("n", "<Leader>l", function() harpoon:list():next() end, { desc = "Harpoon toggle next" })
