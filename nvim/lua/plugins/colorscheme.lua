return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "mocha", -- or macchiato / frappe
      transparent_background = true, -- Matches terminal transparency
      float = {
        transparent = true,
      },
      custom_highlights = function(colors)
        return {
          SnacksPickerPathHidden = { fg = colors.text },
          SnacksPickerSelected = {
            fg = colors.blue,
            bg = colors.surface0,
            style = { "bold" },
          },
        }
      end,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        snacks = true,
        notify = false,
        mini = { enabled = true },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        require("catppuccin").load()
      end,
    },
  },
}
