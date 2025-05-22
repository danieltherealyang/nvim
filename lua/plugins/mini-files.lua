return {
    'echasnovski/mini.files',
    version = '*',
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    config = function()
        require('mini.files').setup({ --[[ your config ]]
            mappings = {
                close       = '<ESC>',
                go_in       = 'l',
                go_in_plus  = '<CR>',
                go_out      = 'h',
                go_out_plus = '-',
                mark_goto   = "'",
                mark_set    = 'm',
                reset       = '<BS>',
                reveal_cwd  = '@',
                show_help   = 'g?',
                synchronize = '=',
                trim_left   = '<',
                trim_right  = '>',
            },
        })
    end,
    lazy = false
}
