local lspconfig = require("lspconfig")

-- Svelte
lspconfig.svelte.setup({
    settings = {
        svelte = {
            plugin = {
                html = { completions = { enable = true } },
                svelte = { completions = { enable = true } },
            }
        }
    }
})
