return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tailwindcss = {
        settings = {
          tailwindCSS = {
            classAttributes = { "class", "ui" },
            experimental = {
              classRegex = {
                -- Usually for nuxt UI
                { "ui:\\s*{([^)]*)\\s*}", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
              },
            },
          },
        },
      },
    },
  },
}
