local map = vim.keymap.set

vim.g.mapleader = " "

map('i', 'jj', '<Esc>')       -- Exit insert mode with jj
map('t', 'jj', '<C-\\><C-n>') -- Exit terminal mode with jj

-- lsp keybinds
map('n', 'gd', vim.lsp.buf.definition)
map('n', 'K', vim.lsp.buf.hover)
map('n', '<leader>rn', vim.lsp.buf.rename)
map('n', '<leader>f', vim.lsp.buf.format)
map('n', '<leader>ca', vim.lsp.buf.code_action)      -- Show code actions
map('n', 'gr', vim.lsp.buf.references)               -- Show references
map('n', 'gi', vim.lsp.buf.implementation)           -- Go to implementation
map('n', '[d', vim.diagnostic.goto_prev)             -- Go to previous diagnostic
map('n', ']d', vim.diagnostic.goto_next)             -- Go to next diagnostic
map('n', '<leader>e', vim.diagnostic.open_float)     -- Show diagnostic error messages
map('n', '<leader>q', vim.diagnostic.setloclist)     -- Show all diagnostics in quickfix

-- Telescope
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')

-- filetree
map('n', '<leader>e', ':Neotree toggle<CR>')
