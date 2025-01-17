return {
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        opts = {
            size = 20,
            open_mapping = [[<C-t>]],
            direction = 'float',       -- or 'vertical' | 'horizontal' | 'tab' | 'float'
            shade_filetypes = {},
            shade_terminals = true,
            shading_factor = 2,
            start_in_insert = true,
            persist_size = true,
            persist_mode = true,
            close_on_exit = true,
            shell = vim.o.shell,
            float_opts = {
                border = 'curved',
                width = 140,
                height = 40,
                winblend = 3,
                highlights = {
                    border = "Normal",
                    background = "Normal",
                },
            },
        },
        config = function(_, opts)
            require("toggleterm").setup(opts)
        end
    }
}
