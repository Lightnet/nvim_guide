
-- https://vonheikemen.github.io/devlog/tools/build-your-first-lua-config-for-neovim/
-- https://bryankegley.me/posts/nvim-getting-started/
-- https://neovim.io/doc/user/lua-guide.html#lua-guide
-- https://stackoverflow.com/questions/3025615/is-there-a-vim-runtime-log

local key_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
  )
end

key_mapper('', '<up>', '<nop>')

--vim.g.mapleader = ' '
--vim.g.maplocalleader = ' '
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

-- i sometimes use the mouse to scroll through a buffer
--vim.cmd [[set mouse=a]]
vim.opt.mouse = 'a'

vim.opt.termguicolors = true

vim.keymap.set('n','<leader>h',':nohlsearch<CR>')

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"
