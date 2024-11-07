return {
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                build = 'make'
            }
        },
        config = function()
            local telescope = require('telescope')
            telescope.setup({
                defaults = {
                    layout_strategy = 'horizontal',
                    layout_config = {
                        width = 0.95,
                        height = 0.85,
                        preview_cutoff = 120,
                    },
                    file_ignore_patterns = {
                        "node_modules",
                        ".git",
                    },
                },
                pickers = {
                    find_files = {
                        hidden = true
                    }
                },
            })
            telescope.load_extension('fzf')
        end
    },

}
