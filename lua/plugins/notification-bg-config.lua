local transparency = 50
return {
  "rcarriga/nvim-notify",
  opts = {
    stages_transparency = {
      ok = transparency,
      info = transparency,
      warn = transparency,
      error = transparency,
      debug = transparency,
      trace = transparency,
    },
    background_colour = "#000000",
  },
}
