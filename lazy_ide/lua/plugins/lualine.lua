return {
  "nvim-lualine/lualine.nvim",
  config = function()
    --set lua line as statuline
    --see ':help lualine.txt'
    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'gruvbox',
        component_separators = '|',
        section_separators = '',
      },
    }
  end
}