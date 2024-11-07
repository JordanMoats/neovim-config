return {
    {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup({
                signs = {
                    add = { text = '+' },
                    change = { text = '~' },
                    delete = { text = '_' },
                    topdelete = { text = '‾' },
                    changedelete = { text = '~' },
                },
                on_attach = function(bufnr)
                    local gs = package.loaded.gitsigns
                    local map = vim.keymap.set
                    -- Navigation
                    map('n', ']c', gs.next_hunk)          -- Next git change
                    map('n', '[c', gs.prev_hunk)          -- Previous git change
                    -- Actions
                    map('n', '<leader>hs', gs.stage_hunk) -- Stage current change
                    map('n', '<leader>hr', gs.reset_hunk) -- Reset current change
                    map('n', '<leader>hb', gs.blame_line) -- Show git blame
                end
            })
        end
    }
}
