vim.cmd [[packadd packer.nvim]]

return require( 'packer' ).startup(function(use)
	use { 'wbthomason/packer.nvim' }

	use { 'f-person/git-blame.nvim' }

	use { "tpope/vim-commentary" }

	use { "windwp/nvim-ts-autotag" }

	use { "NvChad/nvim-colorizer.lua" }

	use { "tpope/vim-surround" }

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
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}

	use { "catppuccin/nvim", as = "catppuccin" }

	use { 'nvim-treesitter/nvim-treesitter', as = "treesitter", {run = ':TSUpdate'}}

	use {
	 'nvim-lualine/lualine.nvim',
	  as = 'lualine',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	use { 'tpope/vim-fugitive' }

	use {
	  'nvim-tree/nvim-tree.lua',
	  requires = {
	    'nvim-tree/nvim-web-devicons',
	  },
	}
	use {
	  'tmhedberg/SimpylFold',
	  requires = {
	    'Konfekt/FastFold',
	  },
	  as = 'simpylfold',
	}
end)



