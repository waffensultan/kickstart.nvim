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
			-- Override the default suppressions to allow nvim config directory
			auto_session_suppress_dirs = {
				"C:\\",
				"C:\\Users",
				"C:\\Windows",
				-- Remove nvim-related suppressions or be more specific
			},
		})
	end
}
