-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "<C-f>", "<right>", {})
vim.keymap.set("i", "<C-b>", "<left>", {})
vim.keymap.set("i", "<C-p>", "<down>", {})
vim.keymap.set("i", "<C-b>", "<up>", {})
vim.keymap.set("i", "<C-e>", "<esc>A", {})
vim.keymap.set("i", "<C-a>", "<esc>I", {})
