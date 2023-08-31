local opts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", ";", "<Nop>", opts)
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

-- Modes normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t", command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
-- NOTE: require winshit plugin
keymap("n", "<C-W>m", ":WinShift<cr>", opts)

-- i j remap to gi gj to get the consistent behaviour in wrap content mode (i.e. set wrap)
-- keymap("n", "j", "<Plug>(accelerated_jk_gj)", opts)
-- keymap("n", "k", "<Plug>(accelerated_jk_gk)", opts)

-- formatting
keymap("n", "<leader>F", "<cmd>lua vim.lsp.buf.format()<cr>", opts)
keymap('v', '<leader>f', "<ESC><cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
-- keymap('v', '<leader>f', "<ESC><cmd>lua vim.lsp.buf.formatexpr()<CR>", opts)

-- save buffer
keymap("n", "<leader>w", ":w<cr>", opts)
-- exit cur window
keymap("n", "<leader>d", ":q<cr>", opts)
-- delete cur buffer
--keymap("n", "<leader>q", ":bp<bar>sp<bar>bn<bar>bd<CR>", opts)
keymap("n", "<leader>q", ":bp<bar>sp<bar>bn<bar>bd<CR>", opts)
-- exit whole program

keymap("n", "ZZ", ":lua require('user.utils').SaveAndExit()<cr>", opts)

-- -- remap macro record key
-- keymap("n", "Q", "q", opts)
-- cancel q
keymap("n", "q", "<Nop>", opts)

-- center cursor
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)
-- keymap("n", "J", "mzJ`z", opts)
-- keymap("n", "j", "jzz", opts)
-- keymap("n", "k", "kzz", opts)


-- Resize with arrows
keymap("n", "<A-Up>", ":resize -2<CR>", opts)
keymap("n", "<A-Down>", ":resize +2<CR>", opts)
keymap("n", "<A-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "R", ":bnext<CR>", opts)
keymap("n", "E", ":bprevious<CR>", opts)

-- Navigate line
keymap("n", "H", "^", opts)
keymap("n", "L", "$", opts)
keymap("v", "H", "^", opts)
keymap("v", "L", "$", opts)


-- Insert --
-- Press jl fast to enter
keymap("i", "jl", "<ESC>", opts)
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
-- keymap("v", "<A-j>", ":m .+1<CR>==", opts)
-- keymap("v", "<A-k>", ":m .-2<CR>==", opts)

keymap("v", "p", '"_dP', opts)


-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)


-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
-- keymap("n", "<Space>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
-- keymap("n", "<Space>f", "<cmd>lua require('telescope').extensions.frecency.frecency(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
-- keymap("n", "<Space>F", "<cmd>Telescope live_grep<cr>", opts)

-- bookmarks
-- keymap("n", "ma", "<cmd>Telescope vim_bookmarks current_file<cr>", opts)
-- keymap("n", "mA", "<cmd>Telescope vim_bookmarks all<cr>", opts)


-- file finder 
keymap("n", "<C-p>","<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
-- switch source header file 
keymap("n", "<A-o>", "<cmd>ClangdSwitchSourceHeader<cr>", opts)
-- find all lsp references  
keymap("n", "<leader>u", "<cmd>Trouble lsp_references<cr>", opts)

keymap("n", "<space>F","<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args(require('telescope.themes').get_ivy())<cr>", opts) 
keymap("v", "<space>F","<cmd>lua require('user.utils').FindCursorWord()<cr>", opts) 
keymap("n", "<leader>s","<cmd>lua require('flash').jump()<cr>", opts) 
keymap("v", "<leader>s","<cmd>lua require('flash').jump()<cr>", opts) 

--keymap("n", "<space>F",FindCursorWord(), opts) 
--
-- calltree
--keymap("n", "<leader>in", "<cmd>lua vim.lsp.buf.incoming_calls()<cr>", opts)

-- debug
--keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint(); require'user.dap.dap-util'.store_breakpoints(true)<cr>", opts)
-- keymap("n", "<leader>dB", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>", opts)
-- keymap("n", "<leader>dr", "lua require'dap'.repl.open()<cr>", opts)
--keymap("n", "<F9>", "<cmd>lua require'dap'.run_last()<cr>", opts)
--keymap('n', '<F10>', '<cmd>lua require"user.dap.dap-util".reload_continue()<CR>', opts)
--keymap("n", "<F4>", "<cmd>lua require'dap'.terminate()<cr>", opts)
--keymap("n", "<F5>", "<cmd>lua require('dap.ext.vscode').load_launchjs(nil, {cppdbg = {'cpp'}})<cr><cmd>lua require'dap'.continue()<cr>", opts)
--keymap("n", "<F6>", "<cmd>lua require'dap'.step_over()<cr>", opts)
--keymap("n", "<F7>", "<cmd>lua require'dap'.step_into()<cr>", opts)
--keymap("n", "<F8>", "<cmd>lua require'dap'.step_out()<cr>", opts)
--keymap("n", "K", "<cmd>lua require'dapui'.eval()<cr>", opts)
-- keymap("n", "<leader>dt", "<cmd>lua require'dapui'.toggle()<cr>", opts)
-- keymap("n", "<leader>dx", "<cmd>lua require'dap'.terminate()<cr>", opts)

-- git diff view
keymap('n', '<leader>j', ']c', opts)
keymap('n', '<leader>k', '[c', opts)

-- -- unit test
-- keymap("n", "<leader>rr", "<cmd>UltestNearest<cr>", opts)
-- keymap("n", "<leader>rd", "<cmd>UltestDebugNearest<cr>", opts)

-- comment
keymap("n", "gcf", "<cmd>Dox<cr>", opts)

-- -- spell check
-- vim.cmd(
-- [[
--   nnoremap <leader>s :call search('\w\>', 'c')<CR>a<C-X><C-S>
-- ]])

-- keymap("n", "<leader>F", scw(), opts)

-- remap macro record key
