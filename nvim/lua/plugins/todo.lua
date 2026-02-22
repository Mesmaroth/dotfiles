return {
  {
    "folke/todo-comments.nvim",
    opts = {
      signs = true, -- show icons in the sign column
      sign_priority = 8,
      keywords = {
        -- Built-in keywords you can customize
        FIX = { icon = " ", color = "error", alt = { "FIXME", "BUG", "FIXIT", "ISSUE" } },
        TODO = { icon = " ", color = "info" },
        WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
        PERF = { icon = "󰅒 ", color = "default", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
        NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
        TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },

        -- ✅ Your custom keywords
        REVIEW = { icon = " ", color = "warning" },
        SAFETY = { icon = "󰒃 ", color = "error" },
        REFACTOR = { icon = " ", color = "hint" },
        nocheckin = { icon = "󰒃 ", color = "error" },
      },
      -- Customize colors (links to highlight groups or hex values)
      colors = {
        error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
        warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
        info = { "DiagnosticInfo", "#2563EB" },
        hint = { "DiagnosticHint", "#10B981" },
        default = { "Identifier", "#7C3AED" },
        test = { "Identifier", "#FF006E" },
      },
      pattern = [[\b(KEYWORDS)\b]],
    },
  },
}
