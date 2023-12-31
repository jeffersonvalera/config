return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set("n", "<C-n>", ":Neotree filesystem toggle <CR>", { desc = "Toggle File Explorer" })
    vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", { desc = "Show Open Buffers" })
    vim.keymap.set("n", "<leader>gs", ":Neotree git_status toggle<CR>", { desc = "Toggle Git Status" })
  end,
}
