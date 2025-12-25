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
		"miikanissi/modus-themes.nvim",
		priority = 1000,
	},
	{
		"ribru17/bamboo.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"navarasu/onedark.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		-- config = function()
		-- 	require("onedark").setup({
		-- 		style = "deep",
		-- 	})
		-- 	require("onedark").load()
		-- end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
		config = function()
			-- Set your default theme here
			vim.cmd.colorscheme("bamboo")
		end,
	},
}
