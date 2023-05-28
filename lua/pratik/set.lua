-- vim.opt.guicursor = " "

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.g.mapleader = " "


-- Autocommand helpers:
-- style inspired by: https://github.com/brainfucksec/neovim-lua/blob/main/nvim/lua/core/autocmds.lua
local augroup = vim.api.nvim_create_augroup   -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd   -- Create autocommand

-- Disable automatic comment insertion, which I find annoying
-- See more info here: https://vim.fandom.com/wiki/Disable_automatic_comment_insertion
-- and here: https://superuser.com/questions/271023/can-i-disable-continuation-of-comments-to-the-next-line-in-vim
local comments = augroup('FixComments', {clear = true})
autocmd('FileType', {
  command = 'setlocal formatoptions-=c formatoptions-=r formatoptions-=o',
  group=comments
})

