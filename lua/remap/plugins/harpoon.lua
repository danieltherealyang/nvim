local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

vim.keymap.set("n", "<Leader>a", function() harpoon:list():add() end, { desc = "Harpoon add buffer" })
vim.keymap.set("n", "<Leader><Tab>", function() toggle_telescope(harpoon:list()) end, { desc = "Harpoon open menu" })

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<Leader>h", function() harpoon:list():prev() end, { desc = "Harpoon toggle previous" })
vim.keymap.set("n", "<Leader>l", function() harpoon:list():next() end, { desc = "Harpoon toggle next" })
