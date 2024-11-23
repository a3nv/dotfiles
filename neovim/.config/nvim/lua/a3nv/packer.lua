vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use '42Paris/42header'
--  use 'joshdick/onedark.vim'
--  use 'Mofiqul/dracula.nvim'
  use { 'catppuccin/nvim', as = 'catppuccin' }
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use 'lukas-reineke/indent-blankline.nvim' -- for visual indentation guides
  use 'lewis6991/gitsigns.nvim'
  if packer_bootstrap then
	require('packer').sync()
  end
end)
