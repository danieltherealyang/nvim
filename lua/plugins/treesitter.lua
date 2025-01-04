local opts = {
    ensure_installed = {
        'c',
        'lua',
        'vim',
        'vimdoc',
        'query',
        'markdown',
        'markdown_inline',
    },
    auto_install = true,
}

local function config()
    require('nvim-treesitter.configs').setup(opts)
end
return {
    'nvim-treesitter/nvim-treesitter',
    config = config,
    build = ':TSUpdate',
}
