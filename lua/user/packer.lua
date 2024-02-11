vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use { 'wbthomason/packer.nvim' }

	-- telescope
	use { 'nvim-lua/plenary.nvim' }
	use { 'nvim-telescope/telescope.nvim' }

	-- gruvbox colorscheme
	use { "ellisonleao/gruvbox.nvim" }

	-- lualine
	use { 'nvim-tree/nvim-web-devicons' }
	use { 'nvim-lualine/lualine.nvim' }

	-- comment
	use { 'numToStr/Comment.nvim' }

	-- github copilot
	use { "github/copilot.vim" }

	-- lsp zero
	use { 'williamboman/mason.nvim' }
  use { 'williamboman/mason-lspconfig.nvim' }
	use { 'neovim/nvim-lspconfig' }
	use { 'hrsh7th/nvim-cmp' }
	use { 'hrsh7th/cmp-nvim-lsp' }
	use { 'L3MON4D3/LuaSnip' }
	use { 'VonHeikemen/lsp-zero.nvim' }

	-- treesitter
	use { 'nvim-treesitter/nvim-treesitter' }
end)
