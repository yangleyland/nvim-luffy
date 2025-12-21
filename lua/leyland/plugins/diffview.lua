return {
	"sindrets/diffview.nvim",
	cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
	keys = {
		{ "<leader>dd", "<cmd>DiffviewOpen<cr>", desc = "Open diff view" },
		{ "<leader>df", "<cmd>DiffviewClose<cr>", desc = "Close diff view" },
	},
}
