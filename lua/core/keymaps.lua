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
map('n', '<leader>q', ':q<CR>')
map('n', '<leader>w', ':w<CR>')


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})


map('n','<leader>gg', ':LazyGit<CR>')
