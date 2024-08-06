local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "mm", function() harpoon:list():add() end)
vim.keymap.set("n", "ml", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "ma", function() harpoon:list():select(1) end)
vim.keymap.set("n", "ms", function() harpoon:list():select(2) end)
vim.keymap.set("n", "md", function() harpoon:list():select(3) end)
vim.keymap.set("n", "mf", function() harpoon:list():select(4) end)
vim.keymap.set("n", "mj", function() harpoon:list():select(5) end)
vim.keymap.set("n", "mk", function() harpoon:list():select(6) end)
