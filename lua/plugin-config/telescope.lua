local builtin = require('telescope.builtin')
vim.keymap.set('n', '<LEADER>ff', builtin.find_files, {})
vim.keymap.set('n', '<LEADER>fg', builtin.live_grep, {})
vim.keymap.set('n', '<LEADER>fb', builtin.buffers, {})
vim.keymap.set('n', '<LEADER>fh', builtin.help_tags, {})

