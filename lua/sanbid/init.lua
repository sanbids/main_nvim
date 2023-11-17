local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

require("sanbid.keymap")
require("sanbid.options")
require("sanbid.autocmd")

require("lazy").setup({
  { import = "sanbid.plugins" }
})

require("sanbid.ui")

