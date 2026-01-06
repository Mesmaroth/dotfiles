return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "adwaita",
    },
  },

  {
    "Mofiqul/adwaita.nvim",
    lazy = false,
    config = function()
      vim.g.adwaita_darker = true
      vim.g.adwaita_transparent = false
    end,
  },
}
