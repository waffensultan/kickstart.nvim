return {
  "goolord/alpha-nvim",
  dependencies = { "rmagatti/auto-session" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

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

    local quotes = {
      "Programs must be written for people to read, and only incidentally for machines to execute. – Harold Abelson",
      "Talk is cheap. Show me the code. – Linus Torvalds",
      "Simplicity is the soul of efficiency. – Austin Freeman",
      "Premature optimization is the root of all evil. – Donald Knuth",
      "First, solve the problem. Then, write the code. – John Johnson",
      "Move fast and break things. – Mark Zuckerberg",
      "The best way to predict the future is to invent it. – Alan Kay",
      "Stay hungry, stay foolish. – Steve Jobs",
      "Simplicity is the ultimate sophistication. – Leonardo da Vinci",
      "Programs are meant to be read by humans and only incidentally by computers. – Donald Knuth",
      "If you’re not embarrassed by the first version of your product, you’ve launched too late. – Reid Hoffman",
      "The most dangerous phrase in the language is, 'We’ve always done it this way.' – Grace Hopper",
      "It always seems impossible until it’s done. – Nelson Mandela",
      "Code is like humor. When you have to explain it, it’s bad. – Cory House",
      "Your most unhappy customers are your greatest source of learning. – Bill Gates",
    }
    local randomQuote = quotes[math.random(#quotes)]

    local quote_section = {
      type = "text",
      val = { randomQuote, "" },
      opts = {
        position = "center",
        hl = "String",
      },
    }

    -- Create an array of quotes
    -- Val will use a random quote from that array
    -- Using Math.random() or something

    -- Dynamic buttons that call telescope functions directly
    dashboard.section.buttons.val = {
      dashboard.button("e", "󰈔  New File", "<cmd>ene<CR>"),
      dashboard.button("h", "  Recent Files", telescope_builtin("oldfiles")),
      dashboard.button("p", "󰉋  Projects", telescope_extension("project", "project")),
      dashboard.button("s", "󰦛  Restore Session", ":AutoSession search<CR>"),
      dashboard.button("d", "  Delete Session", ":AutoSession deletePicker<CR>"),
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
        dashboard.section.footer,
      },
    }

    alpha.setup(config)
  end,
}
