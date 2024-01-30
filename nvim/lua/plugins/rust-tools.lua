return {
	{
		"mrcjkb/rustaceanvim",
		version = "^3", -- Recommended
		ft = { "rust" },
		config = function()
			vim.g.rustaceanvim = {
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
