vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use { 'wbthomason/packer.nvim' }

	use { 'f-person/git-blame.nvim' }

	use { "tpope/vim-commentary" }

	-- use { "rcarriga/nvim-notify" }

	use {
		'nvim-pack/nvim-spectre',
		require = {
			'nvim-lua/plenary.nvim',
			'nvim-tree/nvim-web-devicons'
		}
	}

	use {
		'justinhj/battery.nvim',
		requires = {
			-- 'kyazdani42/nvim-web-devicons',
			'nvim-lua/plenary.nvim'
		}
	}

	use { "voldikss/vim-floaterm" }

	use { "NvChad/nvim-colorizer.lua" }

	use {
		"folke/twilight.nvim",
	}

	use {
		"tpope/vim-surround",
		after = {
			'ggandor/leap.nvim'
		},
	}

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
		'nvim-telescope/telescope.nvim',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	use { "catppuccin/nvim", as = "catppuccin" }

	use { 'nvim-treesitter/nvim-treesitter', as = "treesitter", { run = ':TSUpdate' } }

	use {
		'nvim-lualine/lualine.nvim',
		as = 'lualine',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	use { 'tpope/vim-fugitive' }

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment the two plugins below if you want to manage the language servers from neovim
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },

			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			-- Autocompletion
			{ 'L3MON4D3/LuaSnip' },
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'saadparwaiz1/cmp_luasnip' },
		}
	}

	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
	}

	use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }

	use {
		'glacambre/firenvim',
		run = function() vim.fn['firenvim#install'](0) end
	}

	use {
		'tmhedberg/SimpylFold',
		requires = {
			'Konfekt/FastFold',
		},
		as = 'simpylfold',
	}

	use { 'mattn/emmet-vim' }

	use {
		'ggandor/leap.nvim',
		config = function()
			require('leap').create_default_mappings()
		end
	}

	use { 'stevearc/oil.nvim' }

	use { 'tpope/vim-repeat' }
end)
