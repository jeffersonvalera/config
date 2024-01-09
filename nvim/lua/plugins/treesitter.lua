return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local treesitter_config = require("nvim-treesitter.configs")
      treesitter_config.setup({
        ensure_installed = {
          "lua",
          "bash",
          "html",
          "css",
          "javascript",
          "typescript",
          "tsx",
          "json",
          "c",
          "cpp",
          "c_sharp",
          "rust",
          "sql",
          "vimdoc",
        },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    config = function()
      vim.keymap.set("n", "[c", function()
        require("treesitter-context").go_to_context(vim.v.count1)
      end, { desc = "Next Context" })
    end,
  },
}
