# Information

  Work in progress.
  
  Building the IDE ( integrated development environment ) is not easy. As long you read the docs.
  
  There will be a lot of change due to users improving the plugins and binaries.
  
  One is the LSP (Language Server Protocol) for handle many things behind things. Example VSCode ext for programing language required to analyze the code.
  
  Build two type of plugin managers.

  Program lanuage that use is lua, rust and vim. They are easy to set up as there helper plugins.

  Note that user dir (directory folder path) for nvim can have one init file for start up. It will conflict the builds. Will be using lua file to create plugin. Since those plugin support lua script.
 
# Inputs and KeyMaps:
 Note that user will required some keybaord shortcute keys as it different from normal like vscode.
 
 Reason is that it run all in terminal. So the mouse is disable. So you need to navigation in right manner in keyboard ways.

# Package Manager List:
 * folke/lazy.nvim (github)
 * junegunn/vim-plug (github)
 * wbthomason/packer.nvim (github)
 
 There are other plugin managers that are old and new.
 
# Packer plugin manager:
  This plugin manager required some mannual labour and does update by user commands.
  There is way to disable the plugin.

# Lazy plugin manager:
  This plugin manager will auto update when user edit the plugins config. 
  But there required type of config, init, and settings to set up correctly.
  There is way to disable the plugin.
 
# Mason:
  Mason is Language Server Protocol and other features to handle IDE.
  
  You need to read the mannual.
  
  Search for programing from mason menu.
```
:Mason
```

```
:MasonInstall <package>
```
## Notes:
 * You need to install some binaries and lib.
  * There is checkhealth on mason status to know what to need to install
 * it get it from github.

```
:checkhealth mason
```
Note depend on how load to check which binaries are loaded. You don't need all binary.

You can find the logs in vim-data folder if fail to get lsp binary.
```
wget
curl
gh
7z --choices
```
gh is for github to download file packages

# Install Binary:
  You can use https://scoop.sh/ which is easy to install.


# Packages Nvim:
  Note some packages required other packages.
  
## start up:
 * "goolord/alpha-nvim"
 * 

## Theme:
 * "ellisonleao/gruvbox.nvim"
 * 

## Icon:
 * "nvim-tree/nvim-web-devicons"
 * 

## Tools:
 * "nvim-treesitter/nvim-treesitter" (code language types)
 * "nvim-telescope/telescope.nvim" (search find)
 * "romgrk/barbar.nvim" (tab)

## IDE Tools:
 * "williamboman/mason.nvim"
 * "williamboman/mason-lspconfig.nvim"
 * "neovim/nvim-lspconfig"

## Utility Tools:
 * "nvim-lua/plenary.nvim"
 * "j-hui/fidget.nvim"
 * "folk/neodev.nvim"
 
# Credits:
 * youtube neovim team tutorial 
 * https://neovimcraft.com/