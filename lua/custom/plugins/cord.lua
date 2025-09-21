return {
  "vyfor/cord.nvim",
  build = ":Cord update",
  config = function()
    require("cord").setup({
      editor = {
        tooltip = "I use Neovim (btw)",
      },
      display = {
        theme = "default",
        flavor = "accent",
        swap_fields = true,
      },
      buttons = {
        {
          label = "View Repository",
          url = function(opts)
            return opts.repo_url
          end,
        },
      },
      idle = {
        timeout = 90 * 1000,
        show_status = false,
      },
      advanced = {
        cursor_update_mode = "on_hold",
      },
    })
  end,
}
