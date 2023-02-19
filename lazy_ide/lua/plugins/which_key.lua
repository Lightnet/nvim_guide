-- https://github.com/folke/which-key.nvim

return {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup({
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
        plugins = {
          marks = true, -- shows a list of your marks on ' and `
          registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
          spelling = {
          enabled = false, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
          suggestions = 20, -- how many suggestions should be shown in the list?
        },
        --operators = { gc = "Comments" },
        --key_labels = {
          -- override the label used to display some keys. It doesn't effect WK in any other way.
          -- For example:
          -- ["<space>"] = "SPC",
          -- ["<cr>"] = "RET",
          -- ["<tab>"] = "TAB",
        --},
        --icons = {
          --breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
          --separator = "➜", -- symbol used between a key and it's label
          --group = "+", -- symbol prepended to a group
        --},
      },
    })

  end
}