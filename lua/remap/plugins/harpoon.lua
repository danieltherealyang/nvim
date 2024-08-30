local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local finder = function()
        local paths = {}
        for _, item in ipairs(harpoon_files.items) do
            table.insert(paths, item.value)
        end

        return require("telescope.finders").new_table({
            results = paths,
        })
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = finder(),
        sorter = conf.generic_sorter({}),
        previewer = conf.file_previewer({}),
        attach_mappings = function(prompt_bufnr, map)
            map("n", "dd", function()
                local state = require("telescope.actions.state")
                local selected_entry = state.get_selected_entry()
                local current_picker = state.get_current_picker(prompt_bufnr)

                table.remove(harpoon_files.items, selected_entry.index)
                current_picker:refresh(finder())
            end)
            return true
        end,
    }):find()
end

vim.keymap.set("n", "<Leader>a", function() harpoon:list():add() print("Added to Harpoon") end, { desc = "Harpoon add buffer" })
vim.keymap.set("n", "<Leader><Tab>", function() toggle_telescope(harpoon:list()) end, { desc = "Harpoon open menu" })

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<Leader>h", function() harpoon:list():prev() end, { desc = "Harpoon toggle previous" })
vim.keymap.set("n", "<Leader>l", function() harpoon:list():next() end, { desc = "Harpoon toggle next" })
