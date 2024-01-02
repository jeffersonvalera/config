--Global Config
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"


-- clipboard
vim.opt.clipboard:append("unnamedplus") -- use system clipboard as default register

--Mappings
vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "Vim Explorer" })
vim.keymap.set("n", "<leader>w", ":w<cr>", { desc = "Save Buffer" })
vim.keymap.set("n", "<leader>wa", ":wa<cr>", { desc = "Save Buffer" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Page Down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Page Up" })
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>h", ":nohlsearch<cr>", { desc = "Clear Search Hightlight" })
vim.keymap.set("i", "<C-c>", "<ESC>", { desc = "Exit insert mode" })

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Line Up" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Line Down" })
