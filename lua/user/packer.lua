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
end)
