-- For best auto-session.nvim experience
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- UI Settings
vim.o.winborder = "rounded"
vim.o.showmode = false
vim.o.signcolumn = "yes"

-- Indentation
vim.opt["tabstop"] = 2
vim.opt["shiftwidth"] = 2
vim.o.cursorline = true
vim.o.scrolloff = 30
vim.o.list = true
vim.opt.expandtab = true

-- Clipboard & mouse
vim.o.mouse = "a"
vim.schedule(function()
    vim.o.clipboard = "unnamedplus"
end)

-- Search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Splits
vim.o.splitright = true
vim.o.splitbelow = true

-- Undo/history
vim.o.undofile = true
vim.o.breakindent = true

-- Performance
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Other
vim.o.inccommand = "split"
vim.o.confirm = true

-- Shell
vim.opt.shell = "pwsh.exe"
vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""
