--init packer nvim plugin set up

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

require('packer').startup({
  function(use)
    use 'wbthomason/packer.nvim'
    use(require'plugins.nvim_web_devicons')
    use(require'plugins.gruvbox')
    use(require'plugins.lualine')
    use(require'plugins.which_key')
    use(require'plugins.nvim_notify')
    use(require'plugins.nvim_tree')
    use(require'plugins.nvim_treesitter')
    use(require'plugins.telescope')
    use(require'plugins.mason_lsp')
    
    use(require'plugins.dashboard')
    use(require'plugins.autocomplete')
    
    if packer_bootstrap then
      require('packer').sync()
    end
  end,
  config = {
    --display = {
      --open_fn = require('packer.util').float,
      --open_fn = function()
        --return require('packer.util').float({ border = 'single' })
      --end
    --}
  }
})

