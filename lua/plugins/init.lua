return {
    -- UI
    { import = "plugins.ui" },
    -- Treesitter
    { import = "plugins.treesitter" },
    -- Telescope
    { import = "plugins.telescope" },
    -- LSP
    { import = "plugins.lsp" },

    -- Single-file plugins
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },
}
