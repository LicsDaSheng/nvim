---@diagnostic disable: undefined-global
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "jdtls" }
})

require('core.lsp')
