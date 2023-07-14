local keymap = vim.api.nvim_set_keymap
local opts={noremap= true, silent=true}
-- Move to previous/next
keymap('n', '<LEADER>,', '<Cmd>BufferPrevious<CR>', opts)
keymap('n', '<LEADER>.', '<Cmd>BufferNext<CR>', opts)
-- Re-orde<LEADER>oprevious/next
keymap('n', '<LEADER><', '<Cmd>BufferMovePrevious<CR>', opts)
keymap('n', '<LEADER>>', '<Cmd>BufferMoveNext<CR>', opts)
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
keymap('n', '<LEADER>p', '<Cmd>BufferPin<CR>', opts)
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
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
