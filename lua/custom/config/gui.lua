vim.opt.termguicolors = true
vim.o.guifont = "Maple Mono NF:h12"

-- Nerd Font setting
vim.g.have_nerd_font = true

-- Neovide specific
if vim.g.neovide then
    vim.g.neovide_title_background_color = "#1a1b26"
    vim.g.neovide_refresh_rate = 60
    vim.api.nvim_set_keymap('n', '<F11>', ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})
end
