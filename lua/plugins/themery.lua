return {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
        require("themery").setup({
            themes = { -- Your list of installed colorschemes.
                {
                    name = "default",
                    colorscheme = "default",
                },
                "everforest",
                "kanagawa-lotus",
                "kanagawa-dragon",
                "kanagawa-wave",
                {
                    name = "gruvbox-material-dark",
                    colorscheme = "gruvbox-material",
                    before = [[
                    vim.opt.background = "dark"
                    ]],
                },
                {
                    name = "gruvbox-material-light",
                    colorscheme = "gruvbox-material",
                    before = [[
                    vim.opt.background = "light"
                    ]],
                },
            },
            livePreview = true, -- Apply theme while picking. Default to true.
        })
    end,
    keys = {
        { '<Leader>tc', ':Themery<CR>', desc = 'Toggle Colorschemes' },
    },
}
