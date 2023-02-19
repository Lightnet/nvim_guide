return {
  "ellisonleao/gruvbox.nvim",
  disable = false,
  config = function()
    --print("Hello ???")
    vim.opt.termguicolors = true
    vim.cmd [[colorscheme gruvbox]]
  end
}