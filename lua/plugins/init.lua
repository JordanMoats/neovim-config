return {
    -- UI
    { import = "plugins.ui" },
    -- Treesitter
    { import = "plugins.treesitter" },
    -- Telescope
    { import = "plugins.telescope" },
    -- LSP
    { import = "plugins.lsp" },
    -- Completions
    { import = "plugins.completions"},
    -- File tree
    { import = "plugins.filetree"},
    -- statusline.lua
    { import = "plugins.statusline"},
    -- git
    { import = "plugins.git"},

    -- Single-file plugins
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },
}
