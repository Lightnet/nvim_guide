-- https://github.com/glepnir/dashboard-nvim

-- start up dashboard

return {
  'glepnir/dashboard-nvim',
  enabled = false,
  event = 'VimEnter',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('dashboard').setup {
      -- config
    }
  end
}