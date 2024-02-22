-- https://medium.com/linux-with-michael/lazy-nvim-the-blazingly-fast-neovim-package-manager-19a7a952835c
-- https://github.com/folke/lazy.nvim
-- set up lazy plugins

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
-- vim.g.mapleader = " " -- make sure to set `mapleader` before lazy so your mappings are correct
require("config.settings")
require("config.keymaps")

local opts = { 
--  defaults = { lazy = true },
--  install = { colorscheme = { "tokyonight" } },
  checker = { 
    enabled = true 
  },
  change_detection = {
    enabled = true,
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
}

require("lazy").setup(
  'plugins',  --folder nvim/lua/plugins looks for file with .lua to load them.
  opts
) -- lua/plugins/int.lua