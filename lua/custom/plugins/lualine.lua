return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      extensions = {
        "avante",
        "oil",
        "toggleterm",
      },
      options = {
        component_separators = "",
        section_separators = { left = "", right = "" },
        disabled_filetypes = { "neo-tree" },
      },
      sections = {
        lualine_a = {
          {
            "mode",
            separator = { left = "" },
            right_padding = 2,
          },
        },
        lualine_x = {
          {
            require("noice").api.statusline.mode.get,
            cond = require("noice").api.statusline.mode.has,
            color = { fg = "#ff9e64" },
          },
        },
        lualine_y = {
          {
            "progress",
            separator = " ",
            padding = { left = 1, right = 0 },
          },
          {
            "location",
            padding = { left = 0, right = 1 },
          },
        },
        lualine_z = {
          {
            function()
              return " " .. os.date("%R")
            end,
            separator = { right = "" },
          },
        },
      },
    })
  end,
}
