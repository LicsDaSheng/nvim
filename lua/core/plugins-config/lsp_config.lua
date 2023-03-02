---@diagnostic disable: undefined-global
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "jdtls" }
})

local on_attach = function(_, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  --local bufopts = { noremap = true, silent = true, buffer = bufnr }
  require("core.keymaps").map_lua_keys()
end


-- After setting up mason-lspconfig you may set up servers via lspconfig
require("lspconfig").lua_ls.setup {
  on_attach = on_attach
}
-- require("lspconfig").rust_analyzer.setup {}
