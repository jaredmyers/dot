-- this file can be loaded by calling `lua require('plugins')` from your init.vim
-- only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
    	use 'neovim/nvim-lspconfig'

	use 'hrsh7th/nvim-cmp'
    	use 'hrsh7th/cmp-buffer'
    	use 'hrsh7th/cmp-path'
    	use 'hrsh7th/cmp-nvim-lsp'
    	use 'hrsh7th/cmp-nvim-lua'

	use({'fatih/vim-go', {run = ':GoUpdateBinaries'}})

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use 'navarasu/onedark.nvim'
	use 'mfussenegger/nvim-lint'



--	use({'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}})

end)
