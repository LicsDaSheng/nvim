---@diagnostic disable: undefined-global

if require('lspconfig').lua_ls == nil then
    print('should install lua_ls server')
    return
end

local on_attach = function(_, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    --local bufopts = { noremap = true, silent = true, buffer = bufnr }
    require("core.keymaps").map_lua_keys()
end
require("lspconfig").lua_ls.setup {
    on_attach = on_attach,
    settings = {
        Lua = {
            telemetry = { enable = false },
            runtime = {
                version = "LuaJIT",
                special = {
                    reload = "require",
                },
            },
            diagnostics = {
                globals = { "vim" },
            },
        },
    },
}
