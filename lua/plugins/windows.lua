return {
    "anuvyklack/windows.nvim",
    dependencies = {
        "anuvyklack/middleclass",
        "anuvyklack/animation.nvim"
    },
    config = function()
        vim.o.winwidth = 20
        vim.o.winminwidth = 20
        vim.o.equalalways = true
        require('windows').setup()
    end,
}

