-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Display diagnostics as virtual text only if not in insert mode
vim.api.nvim_create_autocmd("InsertEnter", {
  pattern = "*",
  callback = function()
    vim.diagnostic.config({ virtual_text = false })
  end,
})
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  callback = function()
    vim.diagnostic.config({ virtual_text = true })
  end,
})
