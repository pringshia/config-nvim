--[[
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [ [packadd packer.nvim] ]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()
]]--

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Themes
  use 'folke/tokyonight.nvim'
  use 'rebelot/kanagawa.nvim'

  -- LSP
  use { 'nvim-treesitter/nvim-treesitter', cond = os.getenv("NVP_SKIP_DEV") == nil }

  -- Other
  use 'nvim-lua/plenary.nvim'
  use 'ThePrimeagen/harpoon'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0'
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end


end)
