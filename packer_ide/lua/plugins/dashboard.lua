return {
  'goolord/alpha-nvim',--github > user/repo
  disable = false,
  requires = { 
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require('alpha').setup(require('alpha.themes.startify').config)
  end
}