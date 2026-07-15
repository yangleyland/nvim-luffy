return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		local js_formatter = { "oxfmt", "prettier", stop_after_first = true }

		conform.setup({
			formatters_by_ft = {
				javascript = js_formatter,
				typescript = js_formatter,
				javascriptreact = js_formatter,
				typescriptreact = js_formatter,
				svelte = { "prettier" },
				css = js_formatter,
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = js_formatter,
				["markdown.mdx"] = js_formatter,
				graphql = { "prettier" },
				liquid = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 3000,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>mp", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
