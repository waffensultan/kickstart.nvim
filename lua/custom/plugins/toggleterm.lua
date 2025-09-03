return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        require("toggleterm").setup {
            size = 20,
            autochdir = true,
            dir = "cwd",
            open_mapping = [[<C-\>]],
            shade_terminals = true,
            direction = "float",  -- can be 'horizontal', 'vertical', or 'float'
            close_on_exit = true, -- close the terminal window when the process exits
        }
    end
}
