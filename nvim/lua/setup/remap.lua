vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- Normal mode: Scroll half a page up / down and reposition the screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Visual mode: Cut selected text, paste below, and reposition the screen
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Visual mode: Yank selected text to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- Normal mode: Yank entire line to system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Visual mode: Delete selected text, reposition the screen
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Normal mode: Do nothing on Q
vim.keymap.set("n", "Q", "<nop>")

-- Visual mode: Move selected lines down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Normal mode: Move cursor to next search match and center the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Visual mode: Yank to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- Normal mode: Format code using LSP
vim.keymap.set("n", "<leader>=", vim.lsp.buf.format)

-- Normal mode: Go to next/previous quickfix item and center the screen
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")


-- Normal mode: Go to next/previous location list item and center the screen
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Normal mode: Search and Replace word under cursor with interactive confirmation
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Normal mode: Reload configuration file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Normal mode: Open new tmux window with tmux-sessionizer
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
