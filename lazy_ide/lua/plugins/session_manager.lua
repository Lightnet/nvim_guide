--nvim tree save dir need to ways to change it


return {
  'Shatur/neovim-session-manager',
  enabled=false,
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    local Path = require('plenary.path')
    require('session_manager').setup({
      sessions_dir = Path:new(vim.fn.stdpath('data'), 'sessions'), -- The directory where the session files will be saved.
      path_replacer = '__', -- The character to which the path separator will be replaced for session files.
      colon_replacer = '++', -- The character to which the colon symbol will be replaced for session files.
      autoload_mode = require('session_manager.config').AutoloadMode.LastSession, -- Define what to do when Neovim is started without arguments. Possible values: Disabled, CurrentDir, LastSession
      autosave_last_session = true, -- Automatically save last session on exit and on session switch.
      autosave_ignore_not_normal = true, -- Plugin will not save a session when no buffers are opened, or all of them aren't writable or listed.
      autosave_ignore_dirs = {}, -- A list of directories where the session will not be autosaved.
      autosave_ignore_filetypes = { -- All buffers of these file types will be closed before the session is saved.
        'gitcommit',
      },
      autosave_ignore_buftypes = {}, -- All buffers of these bufer types will be closed before the session is saved.
      autosave_only_in_session = false, -- Always autosaves session. If true, only autosaves after a session is active.
      max_path_length = 80,  -- Shorten the display path if length exceeds this threshold. Use 0 if don't want to shorten the path at all.
    })

    local config_group = vim.api.nvim_create_augroup('MyConfigGroup', {}) -- A global group for all your config autocommands

    vim.api.nvim_create_autocmd({ 'User' }, {
      pattern = "SessionLoadPost",
      group = config_group,
      callback = function()
        -- empty setup using defaults
        require("nvim-tree").setup({
          update_cwd = true,
          sync_root_with_cwd = true,
          respect_buf_cwd = true,
          
          update_focused_file={
            enable = false,
            update_cwd = false,
          },
        })

        --require("nvim-tree.api").tree.focus()
        require('nvim-tree').toggle()
        --[[
        require('nvim-tree').toggle({
          path = nil,
          current_window = false,
          find_file = false,
          update_root = false,
          focus = true,
        })
        --]]
        
      end,
    })

    vim.g.nvim_tree_respect_buf_cwd = 1
  end
}