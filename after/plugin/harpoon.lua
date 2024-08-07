require("harpoon").setup({
    global_settings = {
        -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
        save_on_toggle = false,

        -- saves the harpoon file upon every change. disabling is unrecommended.
        save_on_change = true,

        -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
        enter_on_sendcmd = false,

        -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
        tmux_autoclose_windows = false,

        -- filetypes that you want to prevent from adding to the harpoon list menu.
        excluded_filetypes = { "harpoon" },

        -- set marks specific to each git branch inside git repository
        mark_branch = true,

        -- enable tabline with harpoon marks
        tabline = false,
        tabline_prefix = "   ",
        tabline_suffix = "   ",
    },
    menu = {
        width = vim.api.nvim_win_get_width(0) - 50,
    }
})

vim.api.nvim_set_keymap(
    "n",
    "mm",
    "<cmd>lua require('harpoon.mark').add_file()<CR>",
    { noremap = true }
)
vim.api.nvim_set_keymap(
    "n",
    "ml",
    "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>",
    { noremap = true }
)

vim.api.nvim_set_keymap(
    "n",
    "ma",
    "<cmd>lua require('harpoon.ui').nav_file(1)<CR>",
    { noremap = true }
)
vim.api.nvim_set_keymap(
    "n",
    "ms",
    "<cmd>lua require('harpoon.ui').nav_file(2)<CR>",
    { noremap = true }
)
vim.api.nvim_set_keymap(
    "n",
    "md",
    "<cmd>lua require('harpoon.ui').nav_file(3)<CR>",
    { noremap = true }
)
vim.api.nvim_set_keymap(
    "n",
    "mf",
    "<cmd>lua require('harpoon.ui').nav_file(4)<CR>",
    { noremap = true }
)
vim.api.nvim_set_keymap(
    "n",
    "mj",
    "<cmd>lua require('harpoon.ui').nav_file(5)<CR>",
    { noremap = true }
)
vim.api.nvim_set_keymap(
    "n",
    "mk",
    "<cmd>lua require('harpoon.ui').nav_file(6)<CR>",
    { noremap = true }
)

vim.api.nvim_set_keymap(
    "n",
    "mta",
    "<cmd>lua require('harpoon.term').gotoTerminal(1)<CR>",
    { noremap = true }
)
vim.api.nvim_set_keymap(
    "n",
    "mts",
    "<cmd>lua require('harpoon.term').gotoTerminal(2)<CR>",
    { noremap = true }
)
vim.api.nvim_set_keymap(
    "n",
    "mtd",
    "<cmd>lua require('harpoon.term').gotoTerminal(3)<CR>",
    { noremap = true }
)
vim.api.nvim_set_keymap(
    "n",
    "mtf",
    "<cmd>lua require('harpoon.term').gotoTerminal(4)<CR>",
    { noremap = true }
)
vim.api.nvim_set_keymap(
    "n",
    "mtj",
    "<cmd>lua require('harpoon.term').gotoTerminal(5)<CR>",
    { noremap = true }
)
vim.api.nvim_set_keymap(
    "n",
    "mtk",
    "<cmd>lua require('harpoon.term').gotoTerminal(6)<CR>",
    { noremap = true }
)
