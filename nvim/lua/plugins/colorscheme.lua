return {
  "sainnhe/sonokai",
  priority = 1000,
  config = function()
    vim.g.sonokai_disable_terminal_colors = "1"
    vim.g.sonokai_transparent_background = 2
    -- vim.g.sonokai_enable_italic = "1"
    vim.g.sonokai_style = "andromeda"
    vim.g.sonokai_better_performance = 1
  end,
}
