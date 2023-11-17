return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function() 
      require("tokyonight").setup({
        style="night",
        transparent = true,
        styles = {
          sidebars = "transparent", -- style for sidebars, see below
          floats = "transparent", -- style for floating windows
        },
      })
      vim.cmd([[colorscheme tokyonight]])
    end,
  }
}
