local Util = require("lazyvim.util")
local lualine_require = require("lualine_require")
lualine_require.require = require

local icons = require("lazyvim.config").icons

return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        -- Change from arrow separators to vertical
        component_separators = "|",
        section_separators = "",
        -- Statusline for each window
        globalstatus = false,
      },
      sections = {
        -- Move git diff from section x to section b
        lualine_b = {
          "branch",
          {
            "diff",
            symbols = {
              added = icons.git.added,
              modified = icons.git.modified,
              removed = icons.git.removed,
            },
            source = function()
              local gitsigns = vim.b.gitsigns_status_dict
              if gitsigns then
                return {
                  added = gitsigns.added,
                  modified = gitsigns.changed,
                  removed = gitsigns.removed,
                }
              end
            end,
          },
        },

        -- Remove git signs from section x
        lualine_x = {
          -- stylua: ignore
          {
            function() return require("noice").api.status.command.get() end,
            cond = function() return package.loaded["noice"] and require("noice").api.status.command.has() end,
            color = Util.ui.fg("Statement"),
          },
          -- stylua: ignore
          {
            function() return require("noice").api.status.mode.get() end,
            cond = function() return package.loaded["noice"] and require("noice").api.status.mode.has() end,
            color = Util.ui.fg("Constant"),
          },
          -- stylua: ignore
          {
            function() return "  " .. require("dap").status() end,
            cond = function () return package.loaded["dap"] and require("dap").status() ~= "" end,
            color = Util.ui.fg("Debug"),
          },
          {
            require("lazy.status").updates,
            cond = require("lazy.status").has_updates,
            color = Util.ui.fg("Special"),
          },
        },
        -- Fix time format
        lualine_z = {
          function()
            return " " .. os.date("%l:%M %p")
          end,
        },
      },
    },
  },
}
