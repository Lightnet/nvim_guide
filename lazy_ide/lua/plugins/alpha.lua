-- https://github.com/goolord/alpha-nvim

-- start up panel

return {
  "goolord/alpha-nvim",
  --enabled = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require('alpha').setup(require('alpha.themes.startify').config)
    --require('alpha').setup(require('alpha.themes.dashboard').config)
  end
}