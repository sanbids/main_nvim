return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
    "nvim-treesitter/nvim-treesitter-textobjects",
    "windwp/nvim-ts-autotag",
  },
  config = function ()
    require("sanbid.plugins.config.treesitter")
  end
}
