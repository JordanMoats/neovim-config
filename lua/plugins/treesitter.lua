return {
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        dependencies = {
            'windwp/nvim-ts-autotag',
            'JoosepAlviste/nvim-ts-context-commentstring'
        },
        config = function()
            require('nvim-treesitter.configs').setup({
                ensure_installed = {
                    "lua", "vim", "vimdoc", "javascript", "typescript", "python", "c", "cpp", "rust",
                    "svelte", "html", "css"
                },
                sync_install = false,
                ignore_install = {}, -- List of parsers to ignore installing
                auto_install = true, -- Automatically install missing parsers when entering buffer
                modules = {}, -- Additional modules to load

                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },

                autotag = {
                    enable = true,
                },

                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "gnn",
                        node_incremental = "grn",
                        scope_incremental = "grc",
                        node_decremental = "grm",
                    },
                },
            })
        end,
    },
}
