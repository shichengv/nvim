local keymap = vim.api.nvim_set_keymap
local opts={noremap= true, silent=true}
keymap('n','H' ,'0',opts)
keymap('n','L', '$',opts)
keymap('n','J', '5j',opts)
keymap('n','K', '5k',opts)
-- noremap<LEADER><CR> :nohlsearch<CR>
keymap('n', 'sl', ':vsplit<CR>', opts)
keymap('n', 'sk', ':split<CR>', opts)
keymap('n', '<LEADER><CR>', ':nohlsearch<CR>', opts)

keymap('n','<LEADER>e', ':NvimTreeToggle<ENTER>', opts) -- open nvimtree
keymap('n','th', ':BufferLineCyclePrev<CR>', opts) -- switch tab
keymap('n','tl', ':BufferLineCycleNext<CR>', opts)
