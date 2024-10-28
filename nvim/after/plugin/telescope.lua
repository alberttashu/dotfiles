local builtin = require('telescope.builtin')

-- Normal mode: Fuzzy Find files
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "[F]ind [F]iles" })

-- Normal mode: Fuzzy Find all files including ignored and hidden
vim.keymap.set('n', '<leader>fF', 
    function() builtin.find_files { hidden = true, no_ignore = true } end, 
    {
        desc = "[F]ind All [F]iles"
    })

-- Normal mode: Search Everywhere
vim.keymap.set('n', '<leader>fG', builtin.live_grep, { desc = "[F]ind with live [G]rep" })

vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = "[f]ind [f]iles" })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "[f]ind [f]iles" })


-- Normal mode: Find symbols using LSP
vim.keymap.set('n', '<leader>fs', builtin.lsp_dynamic_workspace_symbols, {})
vim.keymap.set('n', '<leader>rr', vim.lsp.buf.rename, { desc = "[R]ename" })
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "[C]ode [A]ction" })
vim.keymap.set('n', '<leader>gd', builtin.lsp_definitions, { desc = "[G]oto [D]efinition" })
vim.keymap.set('n', '<leader>gr', builtin.lsp_references, { desc = "[G]oto [R]eferences" })
vim.keymap.set('n', '<leader>gi', builtin.lsp_implementations, { desc = "[G]oto [I]mplementation" })
