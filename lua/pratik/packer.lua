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
  use { "catppuccin/nvim", as = "catppuccin" }

  -- LSP
  use { 'nvim-treesitter/nvim-treesitter', cond = os.getenv("NVP_SKIP_DEV") == nil }

  
  -- Other
  use 'nvim-lua/plenary.nvim'
  use 'ThePrimeagen/harpoon'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0'
  }
  use 'tpope/vim-surround'
  -- use 'tpope/vim-sensible'
    -- TODO: Decide if I really need this? Maybe, it's tpope
    -- Explaining Every Line of vim-sensible: http://webcache.googleusercontent.com/search?q=cache:tH-DlPzZ4GAJ:https://towardsdatascience.com/explaining-every-line-of-vim-sensible-b776affec51a&hl=en&gl=us&strip=1&vwsrc=0

  use 'easymotion/vim-easymotion'
    -- TODO: Decide to what capacity I should use this
    -- The project readme says be a "true vimmer" and customize this
    -- My worry is that I will become overly reliant on using this to navigate
    -- files.

  -- use 'mg979/vim-visual-multi'
    -- TODO: Experiment with this


  -- Shortlist:
  -- junegunn/vim-easy-align (seems super niche usage tho)
  -- sbdchd/neoformat (or maybe just vim-prettier)
  -- tpope/commentary (how does it really work with my usecases?)

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end


end)
