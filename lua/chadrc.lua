---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "tundra",
  transparency = true,
  statusline = {
    theme = "minimal",
    -- separator_style = "round",
  },
  nvdash = {
    load_on_startup = false,
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

return M
