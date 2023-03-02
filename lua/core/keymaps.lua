---@diagnostic disable: undefined-global
local function map(mode, lhs, rhs, opts)
  opts = opts or {}
  opts.silent = opts.silent ~= false
  vim.keymap.set(mode, lhs, rhs, opts)
end

map('i', '<C-f>', '<right>')
map('i', '<C-b>', '<left>')
map('i', '<C-a>', '<esc>I')
map('i', '<C-e>', '<esc>A')


map('n', '<leader>e', ':Neotree filesystem reveal toggle<CR>')
map('n', '<leader>h', ':nohlsearch<CR>')
map('n', '<leader>q', ':q<CR>')
map('n', '<leader>w', ':w<CR>')


local builtin = require('telescope.builtin')
map('n', '<leader>ff', builtin.find_files, {})
map('n', '<leader>fr', builtin.oldfiles, {})
map('n', '<leader>fw', builtin.live_grep, {})
map('n', '<leader>fb', builtin.buffers, {})


map('n', '<leader>gg', ':LazyGit<CR>')

local P = {}

local function map_lsp_keys()
  map('n', 'gD', vim.lsp.buf.declaration)
  map('n', 'gd', vim.lsp.buf.definition)
  map('n', 'K', vim.lsp.buf.hover)
  map('n', 'gi', vim.lsp.buf.implementation)
  map('n', '<C-k>', vim.lsp.buf.signature_help)
  map('n', '<space>D', vim.lsp.buf.type_definition)
  map('n', '<space>rn', vim.lsp.buf.rename)
  map('n', '<space>ca', vim.lsp.buf.code_action)
  map('n', 'gr', require('telescope.builtin').lsp_references)
  map('n', '<space>bf', function() vim.lsp.buf.format { async = true } end)
end


function P.map_java_keys()
  map_lsp_keys()

  local spring_boot_run = 'mvn spring-boot:run -Dspring-boot.run.profiles=local'
  local command = ':lua require("toggleterm").exec("' .. spring_boot_run .. '")<CR>'

  key_map('n', '<leader>rj', command)
  key_map('n', '<leader>oi', ':lua require("jdtls".organize_imports()<CR>')
  key_map('n', '<leader>jc', ':lua require("jdtls".compile("incremental")<CR>')
end

function P.map_lua_keys()
  map_lsp_keys()
end
return P
