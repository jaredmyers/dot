local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath, })
end
vim.opt.rtp:prepend(lazypath)

-- keep core.keymaps & opts before plugs &
-- plug_config to ensure keymaps work with plugs
require("core.keymaps")
require("core.options")
require("core.plugins")
require("core.config")
