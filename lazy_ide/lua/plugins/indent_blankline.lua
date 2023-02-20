-- https://vonheikemen.github.io/devlog/tools/neovim-plugins-to-get-started/

return {
  "lukas-reineke/indent-blankline.nvim",
  enabled = true,
  --config=function()
  --end,
  init=function()
    vim.opt.list = true
    vim.opt.listchars:append "eol:↴"

    require("indent_blankline").setup {
      -- for example, context is off by default, use this to turn it on
      show_current_context = true,
      show_current_context_start = true,
    }
  end
}