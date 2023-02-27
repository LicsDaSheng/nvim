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
map('i','<C-a>','<ESC>I',silent_opt)
map('i','<C-e>','<ESC>A',silent_opt)

map('n','<leader>w', ':w<CR>',{desc = '保存'})
map('n','<leader>q', ':q<CR>',silent_opt)

map('n', '<leader>r', ':luafile %<CR>',silent_opt)

-- 窗口创建
map('n', '<leader>ss', ':split<CR>',{desc = '上下分屏'})
map('n', '<leader>sS', ':vsplit<CR>',{desc = '左右分屏'})

-- toggle
-- 导航栏
map('n', '<leader>te', ':NeoTreeFocusToggle<CR>',{desc = '导航栏'})
map('n', '<leader>tg', ':LazyGit<CR>',{desc = 'GIT'})
map('n', '<leader>tb', ':Neotree float buffers<CR>',{desc = 'GIT'})

-- 关闭
map('n', '<leader>cw', ':close<CR>',{desc = '关闭窗口'})
map('n', '<leader>cb', ':bdelete<CR>',{desc = '关闭buffer'})


