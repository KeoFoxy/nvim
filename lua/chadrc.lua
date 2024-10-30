---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "tundra",
  transparency = true,
  statusline = {
    theme = "minimal",
    -- separator_style = "round",
  },

  hl_override = {
    Comment = { italic = true },
    Keyword = { italic = true },
    Include = { italic = true },
    Function = { italic = true },
    Variable = { italic = true },
    Type = { italic = true },
    SpecialComment = { italic = true },
    TSAttribute = { italic = true },
    TSParameter = { italic = true },
    TSLabel = { italic = true },
    TSVariableBuiltin = { italic = true },
    TSTagAttribute = { italic = true },
    ["@comment"] = { italic = true },
    DiffChange = {
      bg = "#464414",
      fg = "none",
    },
    DiffAdd = {
      bg = "#103507",
      fg = "none",
    },
    DiffRemoved = {
      bg = "#461414",
      fg = "none",
    },
  },
}

M.ui = {
  cmp = {
    icons_left = false,
    lspkind_text = true,
    style = "default",
    format_colors = {
      tailwind = false,
      icon = "󱓻",
    },
  },
}

return M
