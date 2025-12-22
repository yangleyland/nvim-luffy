vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness

-- press jk in insert mode to escape
-- keymap.set("i", "jk", "<ESC>", {desc = "Exit Insert mode with jk"})

-- press n to remove highlights
-- keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- window management
keymap.set("n", "<leader>|", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })

keymap.set("n", "<leader>bd", "<cmd>bd<CR>", { desc = "Close buffer" })
keymap.set("n", "<leader>ba", "<cmd>%bd<CR>", { desc = "Close all buffers" })
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Remap zz" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Remap zz" })
