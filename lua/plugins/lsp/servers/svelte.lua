local lspconfig = require("lspconfig")
local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Svelte
lspconfig.svelte.setup({
    capabilities = capabilities,
    settings = {
        svelte = {
            plugin = {
                html = { completions = { enable = true } },
                svelte = { completions = { enable = true } },
            }
        }
    }
})
