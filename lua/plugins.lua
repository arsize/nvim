return require('packer').startup(function()
-- packer can manage itself
use 'wbthomason/packer.nvim'
use "EdenEast/nightfox.nvim"
use {
  'kyazdani42/nvim-tree.lua',
   requires = 'kyazdani42/nvim-web-devicons',
   config = function() require'plugin-config.nvim-tree' end
}
use {'akinsho/bufferline.nvim',requires = 'kyazdani42/nvim-web-devicons'}
end)

