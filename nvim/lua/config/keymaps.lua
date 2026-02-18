-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

if vim.g.lazyvim_picker == "telescope" then
  map("n", "<C-p>", "<cmd>Telescope find_files<cr>", { desc = "Find files (Telescope)" })
  map(
    { "n", "v" },
    "<leader>fw",
    "<cmd>Telescope grep_string<cr>",
    { desc = "Search string under the cursor gre_string (global)" }
  )
elseif vim.g.lazyvim_picker == "fzf" then
  map("n", "<C-p>", "<cmd>FzfLua files<cr>", { desc = "Find files (FzfLua)" })
  map({ "n", "v" }, "<leader>fw", "<cmd>FzfLua grep_cword<cr>", { desc = "Search string under the cursor (global)" })
end

-- Normal mode: Replace the word under the cursor and go into insert mode
map("n", "<leader>cw", "*Ncgn", { noremap = true, silent = true, desc = "Change word under cursor" })

-- Visual mode: Replace the visually selected text and go into insert mode
map("v", "<leader>cw", "y/<C-r>0<CR>Ncgn", { noremap = true, silent = true, desc = "Change selected text" })

map("n", "<C-w>", function()
  Snacks.bufdelete()
end, { desc = "Delete Buffer" })

map("n", "<leader>bO", function()
  Snacks.bufdelete.all()
end, { desc = "Delete all Buffers" })

map("n", ",p", '"0p', { noremap = true, silent = true, desc = "Paste last yankeed text" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })
-- Mapped alt-hjkl to arrows in karabiner
vim.keymap.set("v", "<Down>", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "<Up>", ":m '<-2<CR>gv=gv", { silent = true })

map("n", "<leader>ce", "<cmd>e .env<cr>", { desc = "Edit .env file" })
