-- https://vonheikemen.github.io/devlog/tools/build-your-first-lua-config-for-neovim/

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

--editor
vim.opt.number = true

-- use spaces for tabs and what not
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

--vim.g.mapleader = ' '
--vim.g.maplocalleader = ' '
-- i sometimes use the mouse to scroll through a buffer
--vim.cmd [[set mouse=a]]
vim.opt.mouse = 'a'
vim.opt.termguicolors = true
--vim.keymap.set('n','<leader>h',':nohlsearch<CR>')

-- map leader to <Space>
--vim.keymap.set("n", " ", "<Nop>", { silent = true, remap = false })
--vim.g.mapleader = " "
