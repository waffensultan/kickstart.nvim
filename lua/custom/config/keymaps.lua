-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Bufferline
vim.keymap.set('n', ']b', ':BufferLineCycleNext<CR>', { desc = 'Next [B]uffer' })
vim.keymap.set('n', '[b', ':BufferLineCyclePrev<CR>', { desc = 'Previous [B]uffer' })
vim.keymap.set('n', '<leader>x', ':bdelete<CR>', { desc = 'Close [B]uffer' })
vim.keymap.set('n', '<leader>bb', '<cmd>Telescope buffers<cr>', { desc = 'Find [B]uffers' })

-- Neotree
vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle<CR>')

-- Oil
vim.keymap.set('n', '-', '<cmd>Oil --float<CR>', { desc = "Open oil" })

-- Toggleterm
vim.keymap.set("n", "<leader>t1", "<cmd>1ToggleTerm<CR>", { desc = "Open [T]erminal 1" })
vim.keymap.set("n", "<leader>t2", "<cmd>2ToggleTerm<CR>", { desc = "Open [T]erminal 2" })
vim.keymap.set("n", "<leader>t3", "<cmd>3ToggleTerm<CR>", { desc = "Open [T]erminal 3" })
vim.keymap.set("n", "<leader>t4", "<cmd>4ToggleTerm<CR>", { desc = "Open [T]erminal 4" })

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Keybinds to make split navigation easier.
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
