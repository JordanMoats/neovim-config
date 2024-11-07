return {
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function()
            require('nvim-treesitter.configs').setup({
                ensure_installed = {
                    "lua", "vim", "vimdoc", "javascript", "typescript", "python", "c", "cpp", "rust",
                    "svelte",
                    "html",
                    "css"
                },

                -- Install ensure_installed parsers asynchronously
                sync_install = false,
                -- Automatically install missing parsers when entering relevant buffer

                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },

                -- Optional Features
                indent = { enable = true },
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "gnn",
                        node_incremental = "grn",
                        scope_incremental = "grm",
                        node_decremental = "grm",
                    },
                },
            })
        end,
    },
}
