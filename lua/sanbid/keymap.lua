local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("i", "jk", "<ESC>", opts)
keymap("n", "<leader>w", ":w<cr>", opts)

-- source file
keymap("n", "<leader>r", ":so % | echo('relaod done') <cr> ", opts)

-- buffer
keymap("n", "<S-l>", ":bnext<cr>", opts)
keymap("n", "<S-h>", ":bprevious<cr>", opts)
keymap("n", "<leader>c", ":bdelete<cr>", opts)

-- close window
keymap("n", "<leader>q", ":q!<cr>", opts)

--find file
keymap("n", "<leader><space>", ":Telescope find_files<cr>", opts)
keymap("n", "<leader>ff", ":Telescope find_files<cr>", opts)
keymap("n", "<leader>fr", ":Telescope oldfiles<cr>", opts)
keymap("n", "<leader>fw", ":Telescope live_grep<cr>", opts)


--neo tree
keymap("n", "<leader>e", ":Neotree reveal_force_cwd toggle<cr>", opts)

-- navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- lsp
keymap("n", "<leader>lf", ":lua vim.lsp.buf.format()<cr>", opts)
keymap("n", "<leader>la", ":lua vim.lsp.buf.code_action()<cr>", opts)
keymap("n", "<leader>ll", ":LspInfo<cr>", opts)
keymap("n", "<leader>li", ":LspInstall<cr>", opts)
keymap("n", "<leader>lr", ":lua vim.lsp.buf.rename()<cr>", opts)

--toggle
keymap("n", "<leader>uh", ":lua require('lsp-inlayhints').toggle()<cr>", opts)
keymap("n", "<leader>ur", ":set relativenumber<cr>", opts)

-- move up and down
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)

-- always show search in center
keymap("n", "J", "mzJ`z", opts)
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

keymap("n", "<C-w>", "ggVG", opts)

keymap("n", "<C-f>", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts)


