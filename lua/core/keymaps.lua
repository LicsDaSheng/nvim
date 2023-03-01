local function map(mode, lhs, rhs, opts)
  opts = opts or {}
  opts.silent = opts.silent ~= false
  vim.keymap.set(mode, lhs, rhs, opts)
end

map('i','<C-f>','<right>')
map('i','<C-b>','<left>')
map('i','<C-a>','<esc>I')
map('i','<C-e>','<esc>A')


map('n', '<leader>e', ':Neotree reveal toggle<CR>')
map('n', '<leader>h', ':nohlsearch<CR>')
map('n', '<leader>q', ':wq<CR>')

