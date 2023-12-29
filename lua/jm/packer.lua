vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use { 'wbthomason/packer.nvim' }

	use { "catppuccin/nvim", as = "catppuccin" }
	use { "ellisonleao/gruvbox.nvim", as = "gruvbox" }

	use { "github/copilot.vim", as = "copilot" }

	use (
		'nvim-treesitter/nvim-treesitter',
		{{ run = ':TSUpdate' }}
	)

	use {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.1',
		requires = {
			{'nvim-lua/plenary.nvim'}
		}
	}

	use {
		"akinsho/toggleterm.nvim",
		tag = '*',
		config = function() require("toggleterm").setup() end
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			{ 'neovim/nvim-lspconfig' }, 
			{
				'williamboman/mason.nvim',
				run = function()
					pcall(vim.cmd, 'MasonUpdate')
				end
			},
			{'williamboman/mason-lspconfig.nvim'},
			{'hrsh7th/nvim-cmp'}, 
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'}, 
		}
	}

end)

