return {
  "ellisonleao/gruvbox.nvim",
  enabled = true,
  config = function()
    vim.opt.termguicolors = true
    vim.cmd [[colorscheme gruvbox]]
  end
}