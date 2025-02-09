local nvimtreeConfig = require("configs.nvimtree")

return {
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    opts = nvimtreeConfig.opts(),
    -- config = nvimtreeConfig.config(),
    init = nvimtreeConfig.init(),
  },

  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- Plugin for view git diffs
  -- TODO (vkhytskyi): setup is required
  {
    "sindrets/diffview.nvim"
  },

  -- Preconfigured rust LSP
  {
    'mrcjkb/rustaceanvim',
    version = '^5',
    lazy = false,
  },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
