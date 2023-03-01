return {
 -- whichkey
  {
    "folke/which-key.nvim",
    config = require("plugins.which-key"),
  },
  -- treesitter
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  -- 主题
  {
    "glepnir/zephyr-nvim",
    config = function()
      require("zephyr")
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = require("plugins.neo-tree"),
  },
  {
    "kdheepak/lazygit.nvim",
    config = function()
      require("lazygit")
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    },
    config = require("plugins.lualine"),
  },
  -- lsp config
  {
      "neovim/nvim-lspconfig",
      --lazy = true,
  },
  {
    "hrsh7th/nvim-cmp",
    config = require("plugins.cmp"),
    event = { "InsertEnter", "CmdlineEnter" },
    dependencies = {
      "cmp-nvim-lsp",
      "cmp-buffer",
      "cmp-path",
    },
  },
  { "hrsh7th/cmp-nvim-lsp", lazy = true },
  { "hrsh7th/cmp-buffer", lazy = true },
  { "hrsh7th/cmp-path", lazy = true },
  -- java语言支持
  {
    "mfussenegger/nvim-jdtls",
    config = function()
      require("lsp.jtdls")
    end,
    --lazy = true,
  },
}
