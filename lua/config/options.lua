local opt = vim.opt

-- Basic settings
opt.number = true -- Show line numbers
opt.relativenumber = true -- Show relative line numbers
opt.ignorecase = true -- Ignore case in search
opt.smartcase = true -- But case-sensitive if expression contains a capital letter
opt.hlsearch = true -- Highlight search results
opt.wrap = false -- Don't wrap lines
opt.tabstop = 4 -- A tab is 4 spaces
opt.shiftwidth = 4 -- Number of spaces to use for autoindent
opt.expandtab = true -- Expand tabs to spaces
opt.termguicolors = true  -- True color support
opt.clipboard = 'unnamedplus' -- Use system clipboard

-- Clear search highlights when entering insert mode
vim.api.nvim_create_autocmd('InsertEnter', {
  callback = function()
    vim.cmd('nohlsearch')
  end,
})

-- Clear search highlights when entering visual mode
vim.api.nvim_create_autocmd('CursorHold', {
  callback = function()
    vim.cmd('nohlsearch')
  end,
})
