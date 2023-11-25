-- Python specific settings
return {
  -- Disable ruff_lsp
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        ruff_lsp = function()
          return true
        end,
      },
    },
  },
}
