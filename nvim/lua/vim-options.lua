--Global Config
vim.g.mapleader = " "

--Options
vim.opt.guicursor = ""
-- vim.opt.cursorline = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.termguicolors = true
-- vim.opt.background = "dark"
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.colorcolumn = "80"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.wrap = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true


vim.opt.updatetime = 50

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- clipboard
vim.opt.clipboard:append("unnamedplus") -- use system clipboard as default register

--Mappings Normal Mode
vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "Vim Explorer" })
vim.keymap.set("n", "<leader>w", ":w<cr>", { desc = "Save Buffer" })
vim.keymap.set("n", "<leader>wa", ":wa<cr>", { desc = "Save Buffer" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Page Down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Page Up" })
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>h", ":nohlsearch<cr>", { desc = "Clear Search Hightlight" })

-- Mappings Insert Mode
vim.keymap.set("i", "fj", "<ESC>", { desc = "Back to Normal Mode" })
vim.keymap.set("i", "<C-c>", "<ESC>", { desc = "Exit insert mode" })

-- Mappings Visual Mode
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Line Up" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Line Down" })

--Terminal Mappings
vim.keymap.set("t", "<Esc>", "<C-\\><C-N>", { desc = "Exit Terminal Mode" })
