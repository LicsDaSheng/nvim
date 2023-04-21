require("lspsaga").setup({})

lvim.lsp.buffer_mappings.normal_mode["gr"] = { "<cmd>Lspsaga lsp_finder<CR>", "查找引用" }
lvim.builtin.which_key.mappings["lr"] = { "<cmd>Lspsaga rename<CR>", "Rename" }
lvim.builtin.which_key.mappings["la"] = { "<cmd>Lspsaga code_action<CR>", "Code Action" }
lvim.builtin.which_key.mappings["lo"] = { "<cmd>Lspsaga outline<CR>", "OutLine" }
