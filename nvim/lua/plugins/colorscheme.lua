return {
  {
    "Mofiqul/adwaita.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.adwaita_darker = false
      vim.g.adwaita_disable_cursorline = false
      vim.g.adwaita_transparent = true
    end,
  },
  { "dotsilas/darcubox-nvim" },
  { "yashguptaz/calvera-dark.nvim" },
  {
    "zootedb0t/citruszest.nvim",
    lazy = false,
  },
  priority = 1000,
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "citruszest",
    },
  },
}
