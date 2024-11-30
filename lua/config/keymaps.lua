-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- More tab keymaps
map("n", "<leader><tab>n", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<leader><tab>p", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
map("n", "<leader><tab>l", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<leader><tab>h", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- Disable alt j/k keymaps
vim.keymap.del({ "n", "i", "v" }, "<A-j>")
vim.keymap.del({ "n", "i", "v" }, "<A-k>")

-- Keymap to diff current buffer
map("n", "<leader>d", function()
  if vim.opt.diff:get() then
    vim.cmd("diffoff") -- Disable diff for this window
  else
    vim.cmd("diffthis") -- Enable diff for this window
  end
  -- TODO: add code to toggle diff
end, { desc = "Toggle current window diff mode" })
