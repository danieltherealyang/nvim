local opts = {
}

local function config()
    require('nvim-treesitter.configs').setup(opts)
end
return {
    'nvim-treesitter/nvim-treesitter',
    config = config,
    build = ':TSUpdate',
}
