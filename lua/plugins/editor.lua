return{
	{
		'nvim-mini/mini.nvim',
		version = '*',
		config = function()
			require("mini.pairs").setup()
		end
	},
	{
		"mfussenegger/nvim-lint",
	},
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
			require("nvim-treesitter").setup({
        install_dir = vim.fn.stdpath('data') .. '/sile'
      })
		end
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
          ensure_installed = {} -- Add servers you want here
      })

      vim.lsp.config("*", {
        capabilities = require('cmp_nvim_lsp').default_capabilities()
      })

      -- Enable the specific servers
      vim.lsp.enable("clangd")
    end
  },

  -- Autocompletion
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip', -- Snippet engine
    },
    config = function()
      local cmp = require('cmp')
      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          ['<Tab>'] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
        })
      })
    end
  }
}
