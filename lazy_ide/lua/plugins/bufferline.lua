-- https://github.com/akinsho/bufferline.nvim/blob/main/doc/bufferline.txt
return {
  'akinsho/bufferline.nvim',
  version = "v4.*",
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config=function()
    vim.opt.termguicolors = true
    require("bufferline").setup{
      options={
        --mode = "tabs",
        buffer_close_icon = 'x',
        close_icon = 'x',
        left_trunc_marker = '[',
        right_trunc_marker = ']',
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            text_align = "center",
            separator = true,
          }
        },
        color_icons = false,
        show_buffer_icons = false,
        show_buffer_close_icons = true,
        show_buffer_default_icon  = false,
        show_close_icon  = false,
        show_tab_indicators   = false,
      },
      
    }
  end
}