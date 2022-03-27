local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Enter commands
keymap('n', '<CR>', ':FineCmdline<CR>', opts)

-- QQ
keymap('n', 'Q', '<nop>', {noremap = true})
keymap('n', 'q:', '<nop>', {noremap = true})

-- Save
keymap("n", "<leader>w", ":w<cr>", opts)

-- Safe quit
keymap('n', '<Leader>qq', ':quitall<CR>', opts)

-- Force quit
keymap('n', '<Leader>Q', ':quitall!<CR>', opts)

-- Close buffer
keymap('n', '<Leader>bq', ':bdelete<CR>', opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Select all text in current buffer
keymap('n', '<Leader>a', 'ggVG', opts)

-- Clear messages
keymap('n', '<Leader><space>', ":echo ''<CR>", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":Lex 30<cr>", opts)
keymap("n", "<leader>o", ":only<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)


-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Telescope --
keymap('n', '<C-b>', [[<cmd>lua require('telescope.builtin').buffers()<CR>]], opts)
keymap('n', '<C-p>', [[<cmd>lua require('telescope.builtin').find_files({previewer = false})<CR>]], opts)
keymap('n', '<C-g>', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], opts)
keymap('n', '<leader>sb', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]], opts)
keymap('n', '<leader>sh', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]], opts)
keymap('n', '<leader>st', [[<cmd>lua require('telescope.builtin').tags()<CR>]], opts)
keymap('n', '<leader>sd', [[<cmd>lua require('telescope.builtin').grep_string()<CR>]], opts)
keymap('n', '<leader>so', [[<cmd>lua require('telescope.builtin').tags{ only_current_buffer = true }<CR>]], opts)
keymap('n', '<leader>?', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]], opts)

