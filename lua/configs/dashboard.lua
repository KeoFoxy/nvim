vim.g.dashboard_default_executive = "telescope"

require("dashboard").setup {
  theme = "doom",
  config = {
    header = {
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
          },
    center = {
      { icon = "  ", desc = "Find File", action = "Telescope find_files", key = "ff" },
      { icon = "  ", desc = "Recent Files", action = "Telescope oldfiles", key = "fr" },
      { icon = "  ", desc = "Find Word", action = "Telescope live_grep", key = "fw" },
      { icon = "  ", desc = "New File", action = "enew", key = "fn" },
      { icon = "  ", desc = "Settings", action = "Telescope find_files cwd=~/.config/nvim", key = "fs" },
      { icon = "  ", desc = "Cheatsheet", action = "Telescope keymaps", key = "fc" },
    },
    footer = { "🎉 No Code, No Bug 🎉", "", "🎉 如无必要，勿增实体 🎉" },
  },
}

