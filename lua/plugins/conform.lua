-- Set shfmt to use 2 space indenting
return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        injected = { options = { ignore_errors = true } },
        -- Example of using shfmt with extra args
        shfmt = {
          -- Set indent value to 2 spaces and indent switch cases
          prepend_args = { "-i", "2", "-ci" },
        },
      },
    },
  },
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
