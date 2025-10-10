vim.api.nvim_set_hl(0, "TreesitterContext", { bg = "#545466" })

vim.keymap.set("n", "[c", function()
  require("treesitter-context").go_to_context(vim.v.count1)
end, { desc = "Jump to context" })
