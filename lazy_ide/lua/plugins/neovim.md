


https://neovim.io/doc/user/map.html#mapmode-n
```lua
{mode} Mode short-name (map command prefix: "n", "i", "v", "x", …) or "!" for :map!, or empty string for :map.
```
There are seven sets of mappings
For Normal mode: When typing commands.
For Visual mode: When typing commands while the Visual area is highlighted.
For Select mode: like Visual mode but typing text replaces the selection.
For Operator-pending mode: When an operator is pending (after "d", "y", "c", etc.). See below: omap-info.
For Insert mode. These are also used in Replace mode.
For Command-line mode: When entering a ":" or "/" command.
For Terminal mode: When typing in a :terminal buffer.

```
map-table
         Mode  | Norm | Ins | Cmd | Vis | Sel | Opr | Term | Lang |
Command        +------+-----+-----+-----+-----+-----+------+------+
[nore]map      | yes  |  -  |  -  | yes | yes | yes |  -   |  -   |
n[nore]map     | yes  |  -  |  -  |  -  |  -  |  -  |  -   |  -   |
[nore]map!     |  -   | yes | yes |  -  |  -  |  -  |  -   |  -   |
i[nore]map     |  -   | yes |  -  |  -  |  -  |  -  |  -   |  -   |
c[nore]map     |  -   |  -  | yes |  -  |  -  |  -  |  -   |  -   |
v[nore]map     |  -   |  -  |  -  | yes | yes |  -  |  -   |  -   |
x[nore]map     |  -   |  -  |  -  | yes |  -  |  -  |  -   |  -   |
s[nore]map     |  -   |  -  |  -  |  -  | yes |  -  |  -   |  -   |
o[nore]map     |  -   |  -  |  -  |  -  |  -  | yes |  -   |  -   |
t[nore]map     |  -   |  -  |  -  |  -  |  -  |  -  | yes  |  -   |
l[nore]map     |  -   | yes | yes |  -  |  -  |  -  |  -   | yes  |
```


```lua
vim.keymap.set --standard

vim.api.* -- lua for neovim
vim.lsp. -- neovim
```

```lua
vim.keymap.set()

set({mode}, {lhs}, {rhs}, {opts}) vim.keymap.set() 
```
```lua
-- Can add mapping to Lua functions
vim.keymap.set('n', 'lhs', function() print("real lua function") end)
-- Can use it to map multiple modes
vim.keymap.set({'n', 'v'}, '<leader>lr', vim.lsp.buf.references, { buffer=true })
-- Can add mapping for specific buffer
vim.keymap.set('n', '<leader>w', "<cmd>w<cr>", { silent = true, buffer = 5 })
-- Expr mappings
vim.keymap.set('i', '<Tab>', function()
  return vim.fn.pumvisible() == 1 and "<C-n>" or "<Tab>"
end, { expr = true })
-- <Plug> mappings
vim.keymap.set('n', '[%', '<Plug>(MatchitNormalMultiBackward)')
```

https://neovim.io/doc/user/api.html#nvim_set_keymap()
```lua
call nvim_set_keymap('n', ' <NL>', '', {'nowait': v:true})
```