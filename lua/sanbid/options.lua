local opt = vim.opt

opt.guicursor = ""
opt.number = true
opt.termguicolors = true
opt.scrolloff = 5
opt.autowrite = true
opt.clipboard = "unnamedplus"
opt.completeopt = "menu,menuone,noselect"
opt.conceallevel = 3
opt.confirm = true
opt.hlsearch = false
opt.incsearch = true
opt.expandtab = true
opt.formatoptions = "jcroqlnt"
opt.isfname:append("@-@")
opt.pumblend = 10      -- Popup blend
opt.pumheight = 10     -- Maximum number of entries in a popup
opt.shiftround = true  -- Round indent
opt.shiftwidth = 2     -- Size of an indent
opt.showmode = false
opt.tabstop = 2        -- Number of spaces tabs count for
opt.timeoutlen = 300
opt.undofile = true
opt.undolevels = 10000
opt.signcolumn = "no"
opt.wrap = false
opt.mouse = ""
opt.fillchars = {
	eob = " ", -- suppress ~ at EndOfBuffer
}

if vim.fn.has("nvim-0.10") == 1 then
	opt.smoothscroll = true
end

