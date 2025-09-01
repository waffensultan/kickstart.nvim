return {
    "rmagatti/auto-session",
    lazy = false,
    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    config = function()
        require("auto-session").setup({
            log_level = "error",
            auto_restore = true,
        })
    end
}
