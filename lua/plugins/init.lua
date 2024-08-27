
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
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "goimports",
        "gofumpt",
        "rust-analyzer",
      },
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
    opts = function ()
      return require "configs.null-ls"
    end,
  },
  {
     "rust-lang/rust.vim",
     ft = "rust",
     init = function ()
       vim.g.rustfmt_autosave = 1
     end
  },
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --    opts = {
  --    	 ensure_installed = {
  --   			"vim", "lua", "vimdoc",
  --         "html", "css",
  --         "go", "rust",
  --      },
  --      highlight = {
  --        enable = true
  --      },
  --   },
  -- },
}
