-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
pcall(vim.keymap.del, "n", "l")
pcall(vim.keymap.del, "n", "e")

-- Colemak movement keys
vim.keymap.set({ "n", "v", "o" }, "m", "<Left>", { desc = "Move cursor left" })
vim.keymap.set({ "n", "v", "o" }, "n", "<Down>", { desc = "Move cursor down" })
vim.keymap.set({ "n", "v", "o" }, "l", "<Up>", { desc = "Move cursor up" })
vim.keymap.set({ "n", "v", "o" }, "e", "<Right>", { desc = "Move cursor right" })

-- Displaced functions (smart search direction from LazyVim)
vim.keymap.set("n", "k", "'Nn'[v:searchforward].'zv'", { expr = true, desc = "Next search result" })
vim.keymap.set({ "x", "o" }, "k", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
vim.keymap.set("n", "K", "'nN'[v:searchforward].'zv'", { expr = true, desc = "Prev search result" })
vim.keymap.set({ "x", "o" }, "K", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
vim.keymap.set({ "n", "v", "o" }, "j", "e", { desc = "End of word" })
vim.keymap.set({ "n", "v", "o" }, "J", "E", { desc = "End of WORD" })
vim.keymap.set("n", "h", "m", { desc = "Set mark" })

-- Delete old LazyVim window nav keys
pcall(vim.keymap.del, "n", "<C-h>")
pcall(vim.keymap.del, "n", "<C-j>")
pcall(vim.keymap.del, "n", "<C-k>")

-- Window navigation
vim.keymap.set("n", "<C-m>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<C-n>", "<C-w>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<C-l>", "<C-w>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<C-e>", "<C-w>l", { desc = "Go to right window" })

-- Move lines (Colemak: <A-n> down, <A-l> up)
vim.keymap.set("n", "<C-A-n>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move line down" })
vim.keymap.set("n", "<C-A-l>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move line up" })
vim.keymap.set("i", "<C-A-n>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move line down" })
vim.keymap.set("i", "<C-A-l>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move line up" })
vim.keymap.set("v", "<C-A-n>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "<C-A-l>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move line up" })

vim.keymap.set("i", "ne", "<Esc>", { desc = "Exit insert mode" })
