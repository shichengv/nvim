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
keymap('n', '<LEADER>jo', ':Joshuto<ENTER>', opts)

-- Move to previous/next
-- keymap('n', '<LEADER>,', '<Cmd>BufferPrevious<CR>', opts)
-- keymap('n', '<LEADER>.', '<Cmd>BufferNext<CR>', opts)
-- Re-orde<LEADER>oprevious/next
-- keymap('n', '<LEADER><', '<Cmd>BufferMovePrevious<CR>', opts)
-- keymap('n', '<LEADER>>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto bu<LEADER>rin position...
keymap('n', '<LEADER>1', '<Cmd>BufferGoto 1<CR>', opts)
keymap('n', '<LEADER>2', '<Cmd>BufferGoto 2<CR>', opts)
keymap('n', '<LEADER>3', '<Cmd>BufferGoto 3<CR>', opts)
keymap('n', '<LEADER>4', '<Cmd>BufferGoto 4<CR>', opts)
keymap('n', '<LEADER>5', '<Cmd>BufferGoto 5<CR>', opts)
keymap('n', '<LEADER>6', '<Cmd>BufferGoto 6<CR>', opts)
keymap('n', '<LEADER>7', '<Cmd>BufferGoto 7<CR>', opts)
keymap('n', '<LEADER>8', '<Cmd>BufferGoto 8<CR>', opts)
keymap('n', '<LEADER>9', '<Cmd>BufferGoto 9<CR>', opts)
keymap('n', '<LEADER>0', '<Cmd>BufferLast<CR>', opts)
-- Pin/unp<LEADER>bffer
-- keymap('n', '<LEADER>p', '<Cmd>BufferPin<CR>', opts)
-- Close b<LEADER>e
keymap('n', '<LEADER>q', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
keymap('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
keymap('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
keymap('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
keymap('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
keymap('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

keymap('n', '<LEADER>s', ':SymbolsOutline<CR>', opts)
keymap('n', '<LEADER>c', ':FloatermNew<CR>', opts)

keymap('n', '<LEADER>ff', ':Telescope find_files<CR>', opts)
keymap('n', '<LEADER>rr', ':Telescope registers<CR>', opts)

