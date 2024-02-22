# Information:
 It load plugin files from init.lua.

 This is lazy nvim loader and manager plugins.

 You can enable and disable plugin but note that if you disable the dependencies of those plugin will error.

# Lazy Plugins:

```
:Lazy
```
Note that case sensitive letters.

It show status panel. By using the (shift + I) to install plugins.

# Notes:
* williamboman/mason.nvim and hrsh7th/nvim-cmp
  * need to be loaded in init=function() not config=function()
  * config=function() will not load that seen in :Lazy menu status



# install for windows:
```
scoop install gh
scoop install wget
```

```
:MasonInstall rust-analyzer --fail
:MasonInstall rust-analyzer@nightly --pass
:MasonInstall rust-analyzer@2023-02-13 --pass
```


# helper tips:

```
\
```
Show shortcut keys note it normal mode.
- which-key

```
:WhichKey
```
Show shortcut keys.
```
:WhichKey '<Space>'
```


```
:h mason-requirements
```
```
:mason

```
https://github.com/williamboman/mason.nvim

```
:MasonInstall rust-analyzer
:MasonInstall rust-analyzer codelldb

:MasonLog 
:healthcheck mason
```
https://rsdlt.github.io/posts/rust-nvim-ide-guide-walkthrough-development-debug/
https://github.com/williamboman/mason.nvim/discussions/606
https://alpha2phi.medium.com/neovim-for-beginners-packer-manager-plugin-e4d84d4c3451




# Links:
 * https://github.com/folke/lazy.nvim
 * https://medium.com/linux-with-michael/lazy-nvim-the-blazingly-fast-neovim-package-manager-19a7a952835c
 * https://vonheikemen.github.io/devlog/tools/neovim-plugins-to-get-started/
 * 
 * 
 * https://github.com/dense-analysis/ale
 * https://hannadrehman.com/top-neovim-plugins-for-developers-in-2022

 