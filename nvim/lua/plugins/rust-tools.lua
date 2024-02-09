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
					inlay_hints = {
					    auto = true,
                        only_current_line = false,
                        show_parameter_hints = true,
                        parameter_hints_prefix = "<- ",
                        other_hints_prefix = "=> ",
                        max_len_align = false,
                        max_len_align_padding = 1, 
                        right_align = false,
                        right_align_padding = 7,
                        highlight = "Comment"
					},
				},
				server = {
					on_attach = function(client, bufnr)
						local lsp_on_attach = require("lsp-on-attach-fn")
                        vim.lsp.inlay_hints.enable(bufnr, true)
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
