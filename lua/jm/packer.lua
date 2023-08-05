vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use { 'wbthomason/packer.nvim' }

	use { "catppuccin/nvim", as = "catppuccin" }

	use { "github/copilot.vim", as = "copilot" }

	use { "junegunn/goyo.vim", as = "goyo" } 

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	use {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.1',
		requires = {
			{'nvim-lua/plenary.nvim'}
		}
	}

	use {
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
		ft = { "markdown" }
	}

	use {
		"akinsho/toggleterm.nvim",
		tag = '*',
		config = function() require("toggleterm").setup() end
	}

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			{ 'neovim/nvim-lspconfig' }, 
			{
				'williamboman/mason.nvim',
				run = function() pcall(vim.cmd, 'MasonUpdate') end
			},
			{'hrsh7th/nvim-cmp'}, 
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'}, 
		}
	}
end)

