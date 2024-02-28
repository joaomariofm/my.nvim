vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	-- web-devicons
	use 'nvim-tree/nvim-web-devicons'

	-- telescope
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'

	-- gruvbox colorscheme
	use 'ellisonleao/gruvbox.nvim'

	-- lualine
	use 'nvim-lualine/lualine.nvim'

	-- comment
	use 'numToStr/Comment.nvim'

	-- github copilot
	use 'github/copilot.vim'

	-- lsp zero
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'L3MON4D3/LuaSnip'
	use 'VonHeikemen/lsp-zero.nvim'

	-- treesitter
	use 'nvim-treesitter/nvim-treesitter'

	-- toggleterm
	use 'akinsho/toggleterm.nvim'

	-- nvimtree
	use 'nvim-tree/nvim-tree.lua'

	-- fugitive
	use 'tpope/vim-fugitive'

	-- zen-mode
	use 'folke/zen-mode.nvim'

	-- obsidian -- requires -- use 'nvim-lua/plenary.nvim'
	use 'epwalsh/obsidian.nvim'
end)
