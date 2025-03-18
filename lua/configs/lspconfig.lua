local configs = require "nvchad.configs.lspconfig"

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities
local util = require "lspconfig/util"

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "clangd", "gopls", "gradle_ls", "lua_ls" }

local function organize_imports()
  local params = {
    command = "_typescript.organizeImports",
    arguments = { vim.api.nvim_buf_get_name(0) },
  }
  vim.lsp.buf.execute_command(params)
end

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    commands = {
      OrganizeImports = {
        organize_imports,
        description = "Organize Imports",
      },
    },
  }
  lspconfig.prismals.setup {}
end

-- Eslint
lspconfig.eslint.setup {
  on_attach = function(client, bufnr)
    on_attach(client, bufnr)
    client.server_capabilities.documentFormattingProvider = true
  end,
  capabilities = capabilities,
  settings = {
    eslint = {
      validate = "on",
      packageManager = "npm",
      codeAction = {
        disableRuleComment = {
          enable = true,
          location = "separateLine"
        },
        showDocumentation = {
          enable = true
        }
      }
    }
  },
  root_dir = util.root_pattern(
    ".eslintrc",
    ".eslintrc.js",
    ".eslintrc.cjs",
    ".eslintrc.yaml",
    ".eslintrc.yml",
    ".eslintrc.json",
    "package.json"
  ),
}

-- JavaScript, TypeScript
lspconfig.ts_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      provideRefactorNotApplicableReason = true,
      allowIncompleteCompletions = true,
      includeCompletionsForModuleExports = true
    }
  },
  settings = {
    typescript = {
      suggest = {
        completeFunctionCalls = true,
        autoImports = true
      }
    }
  }
}

-- rust config
lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "rust" },
  root_dir = util.root_pattern "Cargo.toml",
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true,
      },
    },
  },
}

-- swift config
lspconfig.sourcekit.setup {
  cmd = { "sourcekit-lsp" },
  filetypes = { "swift" },
  root_dir = util.root_pattern("Package.swift", ".git", "*.xcodeproj"),
  settings = {
    swift = {
      code_action = {
        enable = true,
        appliesToWholeFile = true  -- Разрешаем code actions для всего файла
      }
    }
  }
}