-- lua/plugins/lsp/init.lua
return {
    {
        "williamboman/mason.nvim",
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig",
        },
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "pyright",
                    "svelte",
                },
                automatic_installation = true,
            })
            
            -- Load server configs
            require("plugins.lsp.servers.lua")
            require("plugins.lsp.servers.python")
            require("plugins.lsp.servers.svelte")
        end
    }
}
