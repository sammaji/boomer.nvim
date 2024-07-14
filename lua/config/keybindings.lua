local telescope = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = "Find files." })
vim.keymap.set('n', '<leader>fv', vim.cmd.Ex, { desc = "List all files in directory." })

-- search only git tracked files
-- ignores stuff like node_modules, etc.
vim.keymap.set('n', '<leader>fgf', telescope.git_files, { desc = "Find only git files." })
vim.keymap.set('n', '<leader>fgc', telescope.git_commits, { desc = "Search through git commits." })

vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = "Search for content in files." })
vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = "Toogle help tags." })
vim.keymap.set('n', '<leader>fc', telescope.command_history, { desc = "Search thorugh command history." })

vim.keymap.set("n", "<leader>fu", vim.cmd.UndotreeToggle, { desc = "Toggle undo tree." })


-- git fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git fugitive." })


