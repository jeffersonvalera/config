return {
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.5",
    dependencies = {
      "nvim-lua/plenary.nvim"
    },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = "Git File" })
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find File" })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "List Buffers" })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Find in File" })
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      -- This is your opts table
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
              -- even more opts
            }
          }
        }
      }
      -- To get ui-select loaded and working with telescope, you need to call
      -- load_extension, somewhere after setup function:
      require("telescope").load_extension("ui-select")
    end
  }
}
