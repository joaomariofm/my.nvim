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

	-- markdown preview
	use 'iamcco/markdown-preview.nvim'
	--
	-- Requires manual configuration as follows:
	--
	-- (over node v16.20.0)
	--
	-- cd ~/.local/share/nvim/site/pack/packer/start/
	-- git clone https://github.com/iamcco/markdown-preview.nvim.git
	-- cd markdown-preview.nvim
	-- npx --yes yarn install
	-- npx --yes yarn build
	--

end)
