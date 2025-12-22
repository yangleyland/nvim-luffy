local function augroup(name)
	return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end
-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	group = augroup("highlight_yank"),
	callback = function()
		(vim.hl or vim.highlight).on_yank()
	end,
})

-- Automatically clear search highlights when cursor moves
vim.api.nvim_create_autocmd("CursorMoved", {
	group = vim.api.nvim_create_augroup("auto-hlsearch", { clear = true }),
	callback = function()
		if vim.v.hlsearch == 1 and vim.fn.searchcount().exact_match == 0 then
			vim.schedule(function()
				vim.cmd.nohlsearch()
			end)
		end
	end,
})
