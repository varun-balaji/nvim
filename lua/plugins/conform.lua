-- Set shfmt to use 2 space indenting
return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      injected = { options = { ignore_errors = true } },
      -- Example of using shfmt with extra args
      shfmt = {
        -- Set indent value to 2 spaces and indent switch cases
        prepend_args = { "-i", "2", "-ci" },
      },
      autopep8 = {
        -- Set line length to 120
        prepend_args = { "--max-line-length", "120" },
      },
    },
  },
}
