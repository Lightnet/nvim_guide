

return {
  "rcarriga/nvim-notify",
  enabled = true,
  dependencies={
    "nvim-lua/plenary.nvim"
  },
  config = function()
    require("notify").setup({
      --background_colour = "#0000000",
      background_colour = "Normal",
    })
    
    --local async = require("plenary.async")
    --local notify = require("notify").async

    --async.run(function()
      --notify("Let's wait for this to close").events.close()
      --notify("It closed!")
      --notify("Hello World!")
    --end)
  end,
  init=function()
    local async = require("plenary.async")
    local notify = require("notify").async
    async.run(function()
      notify("Loaded!")
    end)
  end
}