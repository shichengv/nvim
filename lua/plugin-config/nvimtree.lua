local keymap = vim.api.nvim_set_keymap
local opts={noremap= true, silent=true}
keymap('n','<LEADER>e', ':NvimTreeToggle<ENTER>', opts) -- open nvimtree
keymap('n','th', ':BufferLineCyclePrev<CR>', opts) -- switch tab
keymap('n','tl', ':BufferLineCycleNext<CR>', opts)
keymap('n', '<LEADER>jo', ':Joshuto<ENTER>', opts)
