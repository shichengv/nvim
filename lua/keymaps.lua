local keymap = vim.api.nvim_set_keymap
local opts={noremap= true, silent=true}



-------------------- Local Keymap -------------------------------
-- noremap<LEADER><CR> :nohlsearch<CR>
keymap('n', 'sl', ':vsplit<CR>', opts)
keymap('n', 'sk', ':split<CR>', opts)
keymap('n', '<LEADER><CR>', ':nohlsearch<CR>', opts)

keymap('n', '<A-w>', '<C-w>', opts)
keymap('n', 'U', '<C-r>', opts)

-------------------- Funcs -------------------------------
keymap('n', '<LEADER>h', ':lua show_nvim_help()<ENTER>', opts)


-------------------- NvimTree -------------------------------
keymap('n','<LEADER>t', ':NvimTreeToggle<ENTER>', opts) -- open nvimtree



--------------------- Joshuto ------------------------
keymap('n', '<LEADER>jo', ':Joshuto<ENTER>', opts)




-------------------- BarBar ---------------------------
-- Move to previous/next
keymap('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
keymap('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
-- key-- Re-order to previous/next
keymap('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
keymap('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
-- key-- Goto buffer in position...
keymap('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
keymap('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
keymap('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
keymap('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
keymap('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
keymap('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
keymap('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
keymap('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
keymap('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
keymap('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
-- key-- Pin/unpin buffer
keymap('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- key-- Close buffer
keymap('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- keyMagic buffer-picking mode
keymap('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- key-- Sort automatically by...
keymap('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
keymap('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
keymap('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
keymap('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)
--
-- -- Other:
-- -- :BarbarEnable - enables barbar (enabled by default)
-- -- :BarbarDisable - very bad command, should never be used






---------------------- SymbolsOutline --------------------------------
keymap('n', '<LEADER>s', ':SymbolsOutline<CR>', opts)




---------------------- Open Console --------------------------------
keymap('n', '<LEADER>cb', ':FloatermNew --height=0.3 --width=0.6 --wintype=split --name=floaterm1 --position=rightbelow<CR>', opts)
keymap('n', '<LEADER>cf', ':FloatermNew --height=0.6 --width=0.8 --wintype=float --name=floaterm1 --position=center<CR>', opts)




---------------------- Telescope --------------------------------
keymap('n', '<LEADER>ff', ':Telescope find_files<CR>', opts)
keymap('n', '<LEADER>fg', ':Telescope live_grep<CR>', opts)
keymap('n', '<LEADER>fb', ':Telescope file_browser<CR>', opts)
keymap('n', '<LEADER>bf', ':Telescope buffers<CR>', opts)
keymap('n', '<LEADER>fh', ':Telescope help_tags<CR>', opts)
keymap('n', '<LEADER>of', ':Telescope oldfiles<CR>', opts)
keymap('n', '<LEADER>cs', ':Telescope colorscheme<CR>', opts)
keymap('n', '<LEADER>rr', ':Telescope registers<CR>', opts)



----------------------- MarkdownPreview ----------------------------
keymap('n', '<LEADER>md', ':MarkdownPreview<CR>', opts)



----------------------- NeoComposer : Macros ----------------------------

keymap('n', '<LEADER>qe', ':EditMacros<CR>', opts)
keymap('n', '<LEADER>qc', ':ClearNeoComposer<CR>', opts)

-- /home/shicheng/.local/share/nvim/dapinstall/ccppr_vsc/gdb-10.2

----------------------- DAP ----------------------------
keymap('n', '<LEADER>db', "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap('n', '<LEADER>dB', "<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>", opts)
keymap('n', '<LEADER>db', "<cmd>lua require'dap'.repl.open()<cr>", opts)
keymap('n', '<LEADER>db', "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap('n', '<F4>', "<cmd>lua require'dap'.terminate()<cr>", opts)
keymap('n', '<F5>', "<cmd>lua require'dap'.continue()<cr>", opts)
keymap('n', '<F6>', "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap('n', '<F7>', "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap('n', '<F8>', "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap('n', 'K', "<cmd>lua require'dapui'.eval()<cr>", opts)
