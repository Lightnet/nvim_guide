--init start up
local call = vim.call
local cmd = vim.cmd
--require("core.keymaps")
--require("core.plugins")

-- https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- example using a list of specs with the default options
--vim.g.mapleader = " " -- make sure to set `mapleader` before lazy so your mappings are correct
require("config.keymaps")
require("lazy").setup('plugins', {
  --defaults = { lazy = true },
  --install = { colorscheme = { "tokyonight" } },
  checker = { enabled = true },
  change_detection = {
   notify = true,
  },
  performance = {
   rtp = {
    disabled_plugins = {
     "gzip",
     "matchit",
     "matchparen",
     "netrwPlugin",
     "tarPlugin",
     "tohtml",
     "tutor",
     "zipPlugin",
    },
   },
  },
 }) -- lua/plugins/int.lua
--[[
 vim.g.bufferline = {
  icon_separator_active = '{',
  icon_separator_inactive = '(',
  icon_close_tab = 'x',
  icon_close_tab_modified = '●',
  icon_pinned = 'T',
  icon_close = "X"
}
--]]