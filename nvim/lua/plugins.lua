-- Automatically run: PackerCompile
vim.api.nvim_create_autocmd("BufWritePost", {
  group = vim.api.nvim_create_augroup("PACKER", { clear = true }),
  pattern = "plugins.lua",
  command = "source <afile> | PackerCompile",
})

return require("packer").startup(function(use)
  -- Packer
  use("wbthomason/packer.nvim")

  -- Common utilities
  use("nvim-lua/plenary.nvim")

  -- Icons
  use("nvim-tree/nvim-web-devicons")

  -- Colorscheme
  use("rebelot/kanagawa.nvim")

  -- Harpoon
  use("theprimeagen/harpoon")

  -- Aura Dark
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- Recommended, not required.
  use {
    'daltonmenezes/aura-theme',
    rtp = 'packages/neovim',
    config = function()
      vim.cmd("colorscheme aura-dark") -- Or any Aura theme available
    end
  }

  -- Yazi
  use("mikavilpas/yazi.nvim")

  -- Statusline
  use({
    "nvim-lualine/lualine.nvim",
    event = "BufEnter",
    config = function()
      require("configs.lualine")
    end,
    requires = { "nvim-web-devicons" },
  })

  -- Treesitter
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      require("nvim-treesitter.install").update({ with_sync = true })
    end,
    config = function()
      require("configs.treesitter")
    end,
  })

  use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" })

  -- Telescope
  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    requires = { { "nvim-lua/plenary.nvim" } },
  })

  -- Mason: Portable package manager
  use({
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  })

  -- File manager
  use({
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
  })

  -- Neovim Surround
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  })
  -- Show colors
  use({
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "*" })
    end,
  })

  -- Terminal
  use({
    "akinsho/toggleterm.nvim",
    tag = "*",
    config = function()
      require("configs.toggleterm")
    end,
  })

  -- Git
  use({
    "lewis6991/gitsigns.nvim",
    config = function()
      require("configs.gitsigns")
    end,
  })

  -- Markdown Preview
  use({
    "iamcco/markdown-preview.nvim",
    run = function()
      vim.fn["mkdp#util#install"]()
    end,
  })

  -- Auto pairs
  use({
    "windwp/nvim-autopairs",
    config = function()
      require("configs.autopairs")
    end,
  })

  -- Background Transparent
  use({
    "xiyaowong/nvim-transparent",
    config = function()
      require("transparent").setup({
        enable = true,
        extra_groups = {
          "BufferLineTabClose",
          "BufferlineBufferSelected",
          "BufferLineFill",
          "BufferLineBackground",
          "BufferLineSeparator",
          "BufferLineIndicatorSelected",
        },
        exclude = {},
      })
    end,
  })
end)
