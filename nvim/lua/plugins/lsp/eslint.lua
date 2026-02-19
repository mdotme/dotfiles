return {
  "esmuellert/nvim-eslint",
  dependencies = { "neovim/nvim-lspconfig" },
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("nvim-eslint").setup({
      on_attach = function(client, bufnr)
        vim.api.nvim_buf_create_user_command(bufnr, "EslintFixAll", function()
          vim.lsp.buf.execute_command({
            command = "eslint.applyAllFixes",
            arguments = { { uri = vim.uri_from_bufnr(bufnr), version = vim.lsp.util.buf_versions[bufnr] } },
          })
        end, { desc = "Fix all ESLint problems" })

        vim.keymap.set("n", "<leader>cf", "<cmd>EslintFixAll<CR>", {
          buffer = bufnr,
          desc = "Fix all ESLint problems",
        })
      end,
      handlers = {
        ["workspace/diagnostic/refresh"] = function(_, _, _, _)
          return vim.NIL
        end,
      },
    })
  end,
}
