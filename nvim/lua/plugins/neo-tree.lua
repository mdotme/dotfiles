return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = true,
        always_show = {
          ".env",
        },
      },
    },
  },
}
