return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
      ["<C-[>"] = cmp.mapping(
        cmp.mapping.complete({
          reason = cmp.ContextReason.Auto,
        }),
        { "i", "c" }
      ),
    })
  end,
}
