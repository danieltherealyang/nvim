return {
    'Wansmer/treesj',
    keys = {
        { "<Leader>m", desc = "Toggle block" },
        { "<Leader>j", desc = "Join block" },
        { "<Leader>s", desc = "Split block" },
    },
    dependencies = { 'nvim-treesitter/nvim-treesitter' }, -- if you install parsers with `nvim-treesitter`
    config = function()
        require('treesj').setup({--[[ your config ]]})
    end,
}
