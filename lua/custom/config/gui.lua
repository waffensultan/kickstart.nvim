vim.opt.termguicolors = true
vim.o.guifont = "Maple Mono NF:h12"

-- Disable word wrap
vim.opt.wrap = false

-- Nerd Font setting
vim.g.have_nerd_font = true

-- Neovide specific
if vim.g.neovide then
    vim.g.neovide_title_background_color = "#16161e"
    vim.g.neovide_refresh_rate = 60
end
