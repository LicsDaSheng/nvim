-- -- Additional Plugins <https://www.lunarvim.org/docs/plugins#user-plugins>
lvim.plugins = {
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  }, "morhetz/gruvbox",
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  "mfussenegger/nvim-jdtls",
  "rcarriga/nvim-dap-ui",
  "olexsmir/gopher.nvim",
  "leoluz/nvim-dap-go",
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "F", ":HopWord<cr>", { silent = true })
    end,
  },
}
