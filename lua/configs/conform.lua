local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "eslint" },
    typescript = { "eslint" },
    typescriptreact = { "eslint" },
    javascriptreact = { "eslint" },
    c = { "clang-format" },
    cpp = { "clang-format" },
    rust = { "rustfmt" },
    swift = { "swiftformat" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
