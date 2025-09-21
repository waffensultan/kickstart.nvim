return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      no_italic = true,
      auto_integrations = true,
      term_colors = true,
      color_overrides = {
        mocha = {
          base = "#090b10",
          mantle = "#090b10",
          crust = "#090b10",
        }
      }
    })

    vim.cmd("colorscheme catppuccin-mocha")
  end
}
