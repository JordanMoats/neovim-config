-- lua/plugins/lsp/servers/deno.lua
local nvim_lsp = require('lspconfig')

return nvim_lsp.denols.setup({
    root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc"),
    init_options = {
        lint = true,
        unstable = true,
        suggest = {
            imports = {
                hosts = {
                    ["https://deno.land"] = true,
                    ["https://crux.land"] = true,
                    ["https://x.nest.land"] = true
                },
            },
        },
    },
    -- Add this to prevent conflicts with TypeScript
    on_attach = function(client, bufnr)
        local active_clients = vim.lsp.get_active_clients()
        if client.name == "denols" then
            for _, client_ in pairs(active_clients) do
                -- prevent tsserver from running if it's already started
                if client_.name == "tsserver" then
                    client_.stop()
                end
            end
        end
    end,
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
})
