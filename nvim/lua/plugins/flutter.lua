return {
  -- The main Flutter plugin
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional, makes menus look nice
    },
    config = function()
      require("flutter-tools").setup({
        flutter_path = "/home/kruger/flutter/flutter/bin/flutter", -- points directly to your installation
        -- This adds nice little UI guides next to your Flutter widgets
        widget_guides = {
          enabled = true,
        },
      })
    end,
  },

  -- This ensures the syntax highlighter for Dart is installed automatically
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "dart" })
    end,
  },
}
