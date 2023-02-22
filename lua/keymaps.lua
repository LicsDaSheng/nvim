-- 设置leader键位空格键
vim.g.mapleader = ' '
vim.g.maplocalleader = ' ' 

local map = vim.api.nvim_set_keymap

local silent_opt = {
  noremap = true,
  silent = true,
}
local opt = {
  noremap = true,
  silent = false,
}


map('i','<C-f>','<right>',silent_opt)
map('i','<C-b>','<left>',silent_opt)

map('n','<leader>s', ':w<CR>',{desc = '保存'})
map('n','<leader>q', ':q<CR>',silent_opt)

map('n', '<leader>r', ':luafile %<CR>',silent_opt)

-- 窗口创建
map('n', '<leader>ws', ':split<CR>',{desc = '上下分屏'})
map('n', '<leader>wS', ':vsplit<CR>',{desc = '左右分屏'})


