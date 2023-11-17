return {
  { 'williamboman/mason.nvim' },
  { 'williamboman/mason-lspconfig.nvim' },

  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    config = function()
      require("sanbid.plugins.config.lspconfig")
    end
  },
  { 'neovim/nvim-lspconfig' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/nvim-cmp' },
  { 'L3MON4D3/LuaSnip' },
}
