return function(client, bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }
	local keymap = vim.keymap

	-- set keybinds
	opts.desc = "Show LSP references"
	keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)

	opts.desc = "Go to declaration"
	keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

	opts.desc = "Show LSP definitions"
	keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

	opts.desc = "Show LSP implementations"
	keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)

	opts.desc = "Show LSP type definitions"
	keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

	opts.desc = "See available code actions"
	keymap.set({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action, opts)

	opts.desc = "Smart rename"
	keymap.set("n", "<leader>lr", vim.lsp.buf.rename, opts)

	opts.desc = "Show buffer diagnostics"
	keymap.set("n", "<leader>lD", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)

	opts.desc = "Show line diagnostics"
	keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)

	opts.desc = "Go to previous diagnostic"
	keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)

	opts.desc = "Go to next diagnostic"
	keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

	opts.desc = "Show documentation for what is under cursor"
	keymap.set("n", "K", vim.lsp.buf.hover, opts)

	opts.desc = "Restart LSP"
	keymap.set("n", "<leader>l0", ":LspRestart<CR>", opts)

	opts.desc = "Format File"
	vim.keymap.set("n", "<space>lf", function()
		vim.lsp.buf.format({ async = true })
	end, opts)

	if vim.lsp.inlay_hint then
		vim.lsp.inlay_hint.enable(bufnr, true)
		opts.desc = "Enable Hints"
		vim.keymap.set("n", "<leader>lh", function()
			vim.lsp.inlay_hint.enable(0, true)
		end, opts)
        opts.desc = "Disable Hints"
		vim.keymap.set("n", "<leader>lH", function()
			vim.lsp.inlay_hint.enable(0, false)
		end, opts)
	end

	-- Display Inferencial Types
	-- local inlay_hints = require("inlay-hints")
	-- inlay_hints.on_attach(client, bufnr)
end
