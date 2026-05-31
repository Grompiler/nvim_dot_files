require('mini.comment').setup()
require('mini.extra').setup()
require('mini.icons').setup(
    {
        -- Icon style: 'glyph' or 'ascii'
        style = 'ascii',
    }
)
require('mini.jump').setup()
require('mini.jump2d').setup(
    {
        labels = 'asdfjkl;',
        view = {
            -- How many steps ahead to show. Set to big number to show all steps.
            n_steps_ahead = 1000,
        },
        allowed_windows = {
            current = true,
            not_current = false,
        },
        mappings = {
            start_jumping = '<leader>jj',
        },
    }
)

local win_config = function()
    local height = math.floor(0.618 * vim.o.lines)
    local width = math.floor(0.618 * vim.o.columns)
    return {
        anchor = 'NW',
        height = height,
        width = width,
        row = math.floor(0.5 * (vim.o.lines - height)),
        col = math.floor(0.5 * (vim.o.columns - width)),
        border = "double",
        relative = 'cursor',
        width = 100,
        height = 30,
    }
end
require('mini.pick').setup(
    {
        -- Keys for performing actions. See `:h MiniPick-actions`.
        mappings = {
            caret_left        = '<Left>',
            caret_right       = '<Right>',

            choose            = '<CR>',
            choose_in_split   = '<C-s>',
            choose_in_tabpage = '<C-t>',
            choose_in_vsplit  = '<C-v>',
            choose_marked     = '<M-CR>',

            delete_char       = '<BS>',
            delete_char_right = '<Del>',
            delete_left       = '',
            delete_word       = '<C-w>',

            mark              = '<C-x>',
            mark_all          = '<C-a>',

            move_down         = '<C-j>',
            move_start        = '<C-g>',
            move_up           = '<C-k>',

            paste             = '<C-p>',

            refine            = '<C-Space>',
            refine_marked     = '<M-Space>',

            scroll_down       = '<C-d>',
            scroll_left       = '<C-h>',
            scroll_right      = '<C-l>',
            scroll_up         = '<C-u>',

            stop              = '<Esc>',

            toggle_info       = '<S-Tab>',
            toggle_preview    = '<Tab>',
        },

        -- Source definition. See `:h MiniPick-source`.
        source = {
            items         = nil,
            name          = nil,
            cwd           = nil,

            match         = nil,
            show          = nil,
            preview       = nil,

            choose        = nil,
            choose_marked = nil,
        },

        -- Window related options
        window = {
            -- Centered on screen
            config = win_config
        },
        -- String to use as caret in prompt
        prompt_caret = '|',
        -- String to use as prefix in prompt
        prompt_prefix = '> ',
    }
)
