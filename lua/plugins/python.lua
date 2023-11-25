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
  -- Setup autopep8 instead
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "autopep8")
    end,
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "autopep8" },
      },
    },
  },
}
