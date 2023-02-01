return function(use)
  use({ 'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim' })

  use {
    'stevearc/aerial.nvim',
    config = function() require('aerial').setup() end
  }
  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  use 'lervag/vimtex'
  use 'SirVer/ultisnips'
  use 'honza/vim-snippets'
  use 'Mofiqul/vscode.nvim'
  use { "nvim-telescope/telescope-file-browser.nvim" }
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
      require("lspsaga").setup({})
    end,
    requires = { { "nvim-tree/nvim-web-devicons" } }
  })
  -- install without yarn or npm
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install",
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
  use 'vuciv/vim-bujo'

end
