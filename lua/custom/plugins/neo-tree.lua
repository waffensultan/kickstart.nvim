return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
    },
    lazy = false, -- neo-tree will lazily load itself
    config = function()
        require("neo-tree").setup {
            window = {
                position = "right",
                width = 35
            },
            filesystem = {
                use_libuv_file_watcher = true,
                filtered_items = {
                    visible = true,
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
