return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons", -- optional, but recommended
	},
	lazy = false,                -- neo-tree will lazily load itself
	config = function()
		require("neo-tree").setup {
			window = {
				position = "right"
			},
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
					hide_gitignored = true,
				},
				follow_current_file = {
					enabled = true,
					leave_dirs_open = false
				},
				bind_to_cwd = true,
				cwd_target = {
					sidebar = "tab",
					current = "window"
				}
			},
			default_component_configs = {
				icon = {
					folder_closed = "",
					folder_open = "",
					folder_empty = "",
					default = "",
					highlight = "NeoTreeFileIcon",
				},
				git_status = {
					symbols = {
						added     = "✚",
						modified  = "",
						deleted   = "✖",
						renamed   = "󰁕",
						untracked = "",
						ignored   = "",
						unstaged  = "󰄱",
						staged    = "",
						conflict  = "",
					},
				},
			},
		}
	end,
}
