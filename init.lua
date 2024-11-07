-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then

  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load basic configs
require("config.options")
require("config.keymaps")

-- Initialize lazy.nvim with plugins
require("lazy").setup({ { import = "plugins" } })

-- Set colorscheme with fallback
local ok, _ = pcall(vim.cmd, "colorscheme tokyonight")
if not ok then
    vim.cmd("colorscheme default")
end
