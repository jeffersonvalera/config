return {
    {
        "mrcjkb/rustaceanvim",
        version = "^3", -- Recommended
        ft = { "rust" },
        config = function()
            vim.g.rustaceanvim = {
                tools = {
                    on_initialized = function()
                        -- local inlay_hints = require("inlay-hints")
                        -- inlay_hints.set_all()
                    end,
                    -- inlay_hints = {
                    --     auto = false,
                    -- },
                },
                server = {
                    on_attach = function(client, bufnr)
                        local lsp_on_attach = require("lsp-on-attach-fn")
                        lsp_on_attach(client, bufnr)
                    end,
                },
            }
        end,
    },
    {
        "rust-lang/rust.vim",
        config = function()
            vim.g.rustfmt_autosave = 1
        end,
    },
}
