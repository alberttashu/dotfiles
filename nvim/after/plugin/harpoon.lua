local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>ha", mark.add_file, { desc="Add to Harpoon" } )
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Toggle Harpoon menu" })

vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-j>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-k>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-l>", function() ui.nav_file(4) end)
