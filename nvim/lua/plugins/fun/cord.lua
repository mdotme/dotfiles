return {
  "vyfor/cord.nvim",
  build = ":Cord update",
  event = "VeryLazy",
  opts = {
    editor = {
      client = "neovim",
      tooltip = "i use vim btw",
      icon = nil,
    },
  },
}
