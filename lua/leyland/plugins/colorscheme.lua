-- Install multiple themes
return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},
	{
		"folke/tokyonight.nvim",
		priority = 1000,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
		config = function()
			-- Set your default theme here
			vim.cmd.colorscheme("catppuccin-mocha")
		end,
	},
}
