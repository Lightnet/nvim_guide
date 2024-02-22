-- https://github.com/ellisonleao/gruvbox.nvim
return {
  "ellisonleao/gruvbox.nvim",
  enabled = true,
  config = function()
    vim.opt.termguicolors = true
    vim.cmd [[colorscheme gruvbox]]
    vim.cmd [[set background=light]]
  end
}