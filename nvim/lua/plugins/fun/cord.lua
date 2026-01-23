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

    text = {
      default = "Coding...",
      workspace = nil,
      viewing = nil,
      editing = nil,
      file_browser = "Browsing files",
      plugin_manager = "Managing plugins",
      lsp = "Configuring LSP",
      docs = function(opts)
        return "Reading " .. opts.name
      end,
      vcs = nil,
      notes = nil,
      debug = nil,
      test = nil,
      diagnostics = nil,
      games = nil,
      terminal = nil,
      dashboard = nil,
    },
  },
}
