return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
    init_options = {
      userLanguages = {
        eelixir = "html-eex",
        eruby = "erb",
        rust = "html"
      }
    }
  },

  {
    "aserowy/tmux.nvim",
    config = function()
      return require("tmux").setup()
    end,
    lazy = false,
  },

  {
    "yorik1984/zola.nvim",
    dependencies = "Glench/Vim-Jinja2-Syntax",
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "htmldjango",
        "css",
        "markdown",
        "markdown_inline",
        "c",
        "cpp",
        "python",
        "slint",
        "yuck",
      },
    },
  },
}
