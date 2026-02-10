return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "wakatime/vim-wakatime",
    lazy=false,
    setup = function ()
      vim.cmd([[packadd wakatime/vim-wakatime]])
    end
  },

  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      workspaces = {
        {
          name = "Notes",
          path = "~/Notes"
        }
      }
    }
  },

  {
    "ThePrimeagen/vim-be-good",
    cmd = "VimBeGood",
    lazy = false,
  },

  {
    "NvChad/base46",
    build = function()
      require("base46").load_all_highlights()
    end,
  },
  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  -- git stuff
  {
    "lewis6991/gitsigns.nvim",
    event = "User FilePost",
    opts = function()
      return require "nvchad.configs.gitsigns"
    end,
  },

  {
    "folke/which-key.nvim",
    keys = { "<leader>", "<c-r>", "<c-w>", '"', "'", "`", "c", "v", "g" },
    cmd = "WhichKey",
    config = function(_, opts)
      dofile(vim.g.base46_cache .. "whichkey")
      require("which-key").setup(opts)
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
      opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc", "html", "css", "rust", "python", "typescript", "javascript", "c", "tsx", "go", "cpp", "markdown"
  		},
  	},
  },
}
