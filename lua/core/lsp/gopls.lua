local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

lspconfig.gopls.setup {
    cmd = { "gopls", "serve" },
    filetypes = { "go" },
    root_dir = util.root_pattern("go.work", "go.mod", ".git"),
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
            },
            staticcheck = true,
        },
    },
    on_attach = function(_, bufnr)
        vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
        require('core.keymaps').map_go_keys()
    end,
}
