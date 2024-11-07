local map = vim.keymap.set

vim.g.mapleader = " "

map('i', 'jj', '<Esc>')       -- Exit insert mode with jj
map('t', 'jj', '<C-\\><C-n>') -- Exit terminal mode with jj

-- lsp keybinds
map('n', 'gd', vim.lsp.buf.definition)
map('n', 'K', vim.lsp.buf.hover)
map('n', '<leader>rn', vim.lsp.buf.rename)
map('n', '<leader>f', vim.lsp.buf.format)

-- Telescope Keymaps
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')
