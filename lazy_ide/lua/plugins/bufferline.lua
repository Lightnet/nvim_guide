-- https://git.hubrecht.ovh/hubrecht/NeoVim-config/src/branch/master/lua/user/bufferline.lua
-- https://www.youtube.com/watch?v=quPUdKBYScY
return {
  "akinsho/bufferline.nvim",
  --enabled=false,
  --branch = "v3.2.0",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  --config = function()--odd error start up
    --vim.opt.termguicolors = true
    --require('bufferline').setup({
      --options = {
        --buffer_close_icon = "",
        --modified_icon = "●",
        --close_icon = "x",
      --},
    --})
  --end
}