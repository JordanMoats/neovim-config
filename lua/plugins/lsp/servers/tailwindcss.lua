local lspconfig = require('lspconfig')

lspconfig.tailwindcss.setup({
    settings = {
        tailwindCSS = {
            experimental = {
                classRegex = {
                    "tw`([^`]*)",       -- tw`...`
                    'tw="([^"]*)',      -- <div tw="..." />
                    'tw={"([^"}]*)',    -- <div tw={"..."} />
                    "tw\\.\\w+`([^`]*)", -- tw.xxx`...`
                    "className='([^']*)", -- className="..."
                }
            }
        }
    }
})
