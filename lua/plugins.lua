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
}
