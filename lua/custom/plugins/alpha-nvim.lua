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
			"   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
			"    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
			"          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
			"           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
			"          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
			"   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
			"  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
			" ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
			" ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
			"      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
			"       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
			"                                   ",
		}

		local quote_section = {
			type = "text",
			val = {
				" ",
				"\"First, solve the problem. Then, write the code.\"",
				"                                  - John Johnson",
				" ",
			},
			opts = {
				position = "center",
				hl = "String"
			},
		}

		-- Dynamic buttons that call telescope functions directly
		dashboard.section.buttons.val = {
			-- File operations
			dashboard.button("e", "󰈔  New file", "<cmd>ene<CR>"),
			dashboard.button("f", "󰈞  Find file", telescope_builtin("find_files")),
			dashboard.button("h", "󰋚  Recently opened files", telescope_builtin("oldfiles")),

			-- Search operations
			dashboard.button("g", "󰱽  Find word", telescope_builtin("live_grep")),
			dashboard.button("m", "󰃀  Jump to bookmarks", telescope_builtin("marks")),

			-- Project & Session management
			dashboard.button("p", "󰉋  Projects", telescope_extension("project", "project")),
			dashboard.button("s", "󰁯  Find session", ":SessionSearch<CR>"),

			-- Settings & Exit
			dashboard.button("c", "󰒓  Configuration", "<cmd>edit $MYVIMRC<CR>"),
			dashboard.button("q", "󰗼  Quit", "<cmd>qa<CR>"),
		}

		local config = {
			layout = {
				dashboard.section.header,
				quote_section, -- Quote goes here, between header and buttons
				{ type = "padding", val = 1 },
				dashboard.section.buttons,
			},
		}

		alpha.setup(config);
	end
}
