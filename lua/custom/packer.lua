vim.cmd [[packadd packer.nvim]]

return require( 'packer' ).startup(function(use)
	use { 'wbthomason/packer.nvim' }

	use { "tpope/vim-commentary" }

	use { "rcarriga/nvim-notify" }

	use { "windwp/nvim-ts-autotag" }

	use({
		"folke/noice.nvim",
		requires = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		}
	})

	use { "tpope/vim-surround" }

	use {
		"folke/trouble.nvim",
		requires = { "nvim-tree/nvim-web-devicons" }
	}

	use {
	  "zbirenbaum/copilot.lua",
	  as = "copilot",
	}

	use { "lewis6991/gitsigns.nvim" }

	use 'tpope/vim-sleuth'

	use {
	  "folke/which-key.nvim",
	  config = function()
	    vim.o.timeout = true
	    vim.o.timeoutlen = 300
	  end
	}

	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	-- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}

	use { "catppuccin/nvim", as = "catppuccin" }

	use { 'nvim-treesitter/nvim-treesitter', as = "treesitter", {run = ':TSUpdate'}}

	use {
	 'nvim-lualine/lualine.nvim',
	  as = 'lualine',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	use { 'mbbill/undotree' }

	use { 'tpope/vim-fugitive' }

	use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
	    -- LSP Support
	    {'neovim/nvim-lspconfig'},             -- Required
	    {'williamboman/mason.nvim'},           -- Optional
	    {'williamboman/mason-lspconfig.nvim'}, -- Optional

	    -- Autocompletion
	    {'hrsh7th/nvim-cmp'},         -- Required
	    {'hrsh7th/cmp-nvim-lsp'},     -- Required
	    {'hrsh7th/cmp-buffer'},       -- Optional
	    {'hrsh7th/cmp-path'},         -- Optional
	    {'saadparwaiz1/cmp_luasnip'}, -- Optional
	    {'hrsh7th/cmp-nvim-lua'},     -- Optional

	    -- Snippets
	    {'L3MON4D3/LuaSnip'},             -- Required
	    {'rafamadriz/friendly-snippets'}, -- Optional
	  }
	}

	use {
	  'nvim-tree/nvim-tree.lua',
	  requires = {
	    'nvim-tree/nvim-web-devicons', -- optional
	  },
	}

	use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

	use {
	    'glacambre/firenvim',
	    run = function() vim.fn['firenvim#install'](0) end
	}
end)



