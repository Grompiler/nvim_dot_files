require("oil").setup({
    columns = {},
    delete_to_trash = true,
    default_file_explorer = true,
    keymaps = {
        ["<C-/>"] = "actions.select_vsplit",
        ["<TAB>"] = "actions.select",
        ["<C-r>"] = "actions.refresh",
        ["<BS>"] = "actions.parent",
        ["`"] = "actions.cd",
        ["g."] = "actions.toggle_hidden",
        ["gs"] = "actions.change_sort"
    },
    view_options = {
        -- Show files and directories that start with "."
        show_hidden = true,
        -- This function defines what is considered a "hidden" file
        is_hidden_file = function(name, bufnr)
            return vim.startswith(name, ".")
        end,
        -- This function defines what will never be shown, even when `show_hidden` is set
        is_always_hidden = function(name, bufnr)
            return false
        end,
        sort = {
            { "name", "asc" },
            { "type", "asc" },
        },
    },
})

vim.api.nvim_set_keymap(
    "n",
    "<leader>.",
    "<cmd>Oil<CR>",
    { noremap = true }
)
vim.api.nvim_set_keymap(
    "n",
    "<leader><leader>",
    "<cmd>Oil .<CR>",
    { noremap = true }
)
