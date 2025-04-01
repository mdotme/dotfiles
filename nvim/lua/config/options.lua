-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.wrap = false
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.path:append({ "**" })
vim.opt.mouse = ""
vim.opt.formatoptions:append({ "r" })
vim.g.snacks_animate = false
vim.g.lazyvim_picker = "telescope"
