-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { 
			{'nvim-lua/plenary.nvim'} 
		}
	}

	use { "catppuccin/nvim", as = "catppuccin" }

	use { "junegunn/goyo.vim", as = "goyo" } 

	use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
			require("toggleterm").setup()
		end
	}

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

end)

