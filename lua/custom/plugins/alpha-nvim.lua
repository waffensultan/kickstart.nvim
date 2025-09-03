return {
    'goolord/alpha-nvim',
    dependencies = { "rmagatti/auto-session" },
    config = function()
        local alpha = require('alpha');
        local dashboard = require("alpha.themes.dashboard");

        -- Dynamic function creator for telescope commands
        local function telescope_builtin(builtin_name, opts)
            return function()
                require("telescope.builtin")[builtin_name](opts or {})
            end
        end

        -- Dynamic function creator for telescope extensions
        local function telescope_extension(extension_name, builtin_name, opts)
            return function()
                require("telescope").extensions[extension_name][builtin_name](opts or {})
            end
        end

        dashboard.section.header.val = {
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "██╗    ██╗ █████╗ ███████╗███████╗███████╗███╗   ██╗██╗   ██╗██╗███╗   ███╗",
            "██║    ██║██╔══██╗██╔════╝██╔════╝██╔════╝████╗  ██║██║   ██║██║████╗ ████║",
            "██║ █╗ ██║███████║█████╗  █████╗  █████╗  ██╔██╗ ██║██║   ██║██║██╔████╔██║",
            "██║███╗██║██╔══██║██╔══╝  ██╔══╝  ██╔══╝  ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
            "╚███╔███╔╝██║  ██║██║     ██║     ███████╗██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
            " ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝     ╚═╝     ╚══════╝╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
            "                                   ",
            "                                   ",
            "                                   ",
        }

        local quote_section = {
            type = "text",
            val = {
                '"The master has failed more times than the beginner has even tried."',
                " ",
            },
            opts = {
                position = "center",
                hl = "String"
            },
        }

        -- Dynamic buttons that call telescope functions directly
        dashboard.section.buttons.val = {
            dashboard.button("e", "󰈔  New file", "<cmd>ene<CR>"),
            dashboard.button("h", "󰋚  Recent files", telescope_builtin("oldfiles")),
            dashboard.button("p", "󰉋  Projects", telescope_extension("project", "project")),
            dashboard.button("s", "󰁯  Restore Session", ":AutoSession search<CR>"),
            dashboard.button("c", "󰒓  Config", "<cmd>edit $MYVIMRC<CR>"),
            dashboard.button("q", "  Quit", "<cmd>qa<CR>"),
        }

        local lazy_stats = require("lazy").stats()
        dashboard.section.footer.val = {
            "",
            "󰚥 Plugins loaded: " .. lazy_stats.loaded .. " / " .. lazy_stats.count,
            "󱎫 Loading time: " .. math.floor(lazy_stats.startuptime * 100 + 5) / 100 .. "ms",
        }

        local config = {
            layout = {
                dashboard.section.header,
                quote_section, -- Quote goes here, between header and buttons
                { type = "padding", val = 1 },
                dashboard.section.buttons,
                dashboard.section.footer
            },
        }

        alpha.setup(config);
    end
}
