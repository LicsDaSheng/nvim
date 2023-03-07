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
    map("n", "gh", "<cmd>Lspsaga lsp_finder<CR>")
    map("n", "<leader>rn", "<cmd>Lspsaga rename<CR>")
    map('n', 'gd', '<cmd>Lspsaga peek_definition<CR>')
    map('n', 'K', '<cmd>Lspsaga hover_doc<CR>')
    map('n', 'gi', vim.lsp.buf.implementation)
    map('n', '<space>D', vim.lsp.buf.type_definition)
    map('n', '<space>ca', vim.lsp.buf.code_action)
    map('n', 'gr', require('telescope.builtin').lsp_references)
    map('n', '<space>bf', function() vim.lsp.buf.format { async = true } end)
end


function P.map_java_keys()
    map_lsp_keys()

    local spring_boot_run = 'mvn spring-boot:run -Dspring-boot.run.profiles=local'
    local command = ':lua require("toggleterm").exec("' .. spring_boot_run .. '")<CR>'

    map('n', '<leader>rj', command)
    map('n', '<leader>oi', ':lua require("jdtls".organize_imports()<CR>')
    map('n', '<leader>jc', ':lua require("jdtls".compile("incremental")<CR>')
end

function P.map_lua_keys()
    map_lsp_keys()
end

return P
