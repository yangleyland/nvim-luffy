return {
	"NeogitOrg/neogit",
	lazy = true,
	dependencies = {
		"nvim-lua/plenary.nvim", -- required
		"sindrets/diffview.nvim", -- optional - Diff integration
		"nvim-telescope/telescope.nvim", -- optional
		"ibhagwan/fzf-lua", -- optional
		"nvim-mini/mini.pick", -- optional
		"folke/snacks.nvim", -- optional
	},
	cmd = "Neogit",
	keys = {
		{
			"<leader>gg",
			function()
				require("neogit").open({ kind = "floating" })
			end,
			desc = "Neogit (floating)",
		},
	},
}
