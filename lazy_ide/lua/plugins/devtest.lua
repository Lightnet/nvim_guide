-- https://github.com/MunifTanjim/nui.nvim
-- 

return {
  name="myplugin",
  dir="myplugin", --path
  dev=true,
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  init=function()
    --print("Hello Test plugin init...")
    
    --require('myplugin')
    local Input = require("nui.input")
    local event = require("nui.utils.autocmd").event
    local params = vim.lsp.util.make_position_params()

    local input = Input({
      position = "50%",
      size = {
        width = 20,
      },
      border = {
        style = "single",
        text = {
          top = "[Howdy?]",
          top_align = "center",
        },
      },
      win_options = {
        winhighlight = "Normal:Normal,FloatBorder:Normal",
      },
    }, {
      prompt = "> ",
      default_value = "Hello",
      on_close = function()
        print("Input Closed!")
      end,
      on_submit = function(value)
        print("Input Submitted: " .. value)
      end,
    })
    
    -- mount/open the component
    --input:mount()
    
    -- unmount component when cursor leaves buffer
    input:on(event.BufLeave, function()
      input:unmount()
    end)

  end
}