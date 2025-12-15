return {
  "stevearc/conform.nvim",
  opts = {
    -- Build formatters_by_ft directly as a table literal
    formatters_by_ft = (function()
      local t = {
        lua = { "stylua" },
        python = { "isort", "black" },
        rust = { "rustfmt" },
      }

      local prettier_ft = {
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "tsx",
        "html",
        "css",
        "json",
        "yaml",
        "markdown",
      }

      for _, ft in ipairs(prettier_ft) do
        t[ft] = { "prettierd", "prettier", stop_after_first = true }
      end

      return t
    end)(),

    format_on_save = {
      timeout_ms = 2000,
      lsp_format = "fallback",
    },

    formatters = {
      stylua = {
        prepend_args = { "--indent-type", "Spaces", "--indent-width", "2" },
      },
    },
  },
}

