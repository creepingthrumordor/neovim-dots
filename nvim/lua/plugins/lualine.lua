return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function()
    return {
      options = {
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        theme = "auto",
      },
      sections = {
        lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
        lualine_b = { "filename", "branch" },
        lualine_c = { "%=" },
        lualine_x = {},
        lualine_y = { "filetype", "progress" },
        lualine_z = {
          { "location", separator = { right = "" }, left_padding = 2 },
        },
      },
    }
  end,
}
