return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.inlay_hints = { enabled = false }
    opts.servers = opts.servers or {}
    opts.servers.cssls = {
      settings = {
        css = { validate = true, lint = { unknownAtRules = "ignore" } },
        scss = { validate = true, lint = { unknownAtRules = "ignore" } },
        less = { validate = true, lint = { unknownAtRules = "ignore" } },
      },
    }
  end,
}
