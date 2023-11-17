return {
  {

    "Wansmer/treesj",

    dependencies = { "nvim-treesitter/nvim-treesitter" },

    keys = {
      {
        "<leader>jj",
        function() require("treesj").toggle() end,
        mode = "n",
        desc = "Toggle Treesitter join",
      },
    },

    config = function(_, opts) require("treesj").setup(opts) end,

    opts = {
      use_default_keymaps = false,
      max_join_length = 220, -- 120 is not sufficient
    },
  },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },

  {
    'christoomey/vim-tmux-navigator',
    lazy = false,
  },

  {
    "folke/todo-comments.nvim",
    cmd = { "TodoTrouble", "TodoTelescope" },
    event = { "BufReadPost", "BufNewFile" },
    config = true,
    -- stylua: ignore
    keys = {
      { "]t",         function() require("todo-comments").jump_next() end, desc = "Next todo comment" },
      { "[t",         function() require("todo-comments").jump_prev() end, desc = "Previous todo comment" },
      { "<leader>xt", "<cmd>TodoTrouble<cr>",                              desc = "Todo (Trouble)" },
      { "<leader>xT", "<cmd>TodoTrouble keywords=TODO,FIX,FIXME<cr>",      desc = "Todo/Fix/Fixme (Trouble)" },
      { "<leader>fT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>",    desc = "Todo/Fix/Fixme" },
    },

  },

  {
    "folke/trouble.nvim",
    cmd = { "TroubleToggle", "Trouble" },
    opts = { use_diagnostic_signs = true },
    keys = {
      { "<leader>xx", "<cmd>TroubleToggle document_diagnostics<cr>",  desc = "Document Diagnostics (Trouble)" },
      { "<leader>xX", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics (Trouble)" },
      { "<leader>xL", "<cmd>TroubleToggle loclist<cr>",               desc = "Location List (Trouble)" },
      { "<leader>xQ", "<cmd>TroubleToggle quickfix<cr>",              desc = "Quickfix List (Trouble)" },
      {
        "[q",
        function()
          if require("trouble").is_open() then
            require("trouble").previous { skip_groups = true, jump = true }
          else
            local ok, err = pcall(vim.cmd.cprev)
            if not ok then vim.notify(err, vim.log.levels.ERROR) end
          end
        end,
        desc = "Previous trouble/quickfix item",
      },
      {
        "]q",
        function()
          if require("trouble").is_open() then
            require("trouble").next { skip_groups = true, jump = true }
          else
            local ok, err = pcall(vim.cmd.cnext)
            if not ok then vim.notify(err, vim.log.levels.ERROR) end
          end
        end,
        desc = "Next trouble/quickfix item",
      },
    },
  },

  {
    "axelvc/template-string.nvim",
    opts = {
      filetypes = { "html", "typescript", "javascript", "typescriptreact", "javascriptreact", "python" }, -- filetypes where the plugin is active
      jsx_brackets = true,                                                                                -- must add brackets to JSX attributes
      remove_template_string = false,                                                                     -- remove backticks when there are no template strings
      restore_quotes = {
        -- quotes used when "remove_template_string" option is enabled
        normal = [[']],
        jsx = [["]],
      },
    },

  },

  {
    "CRAG666/code_runner.nvim",
    opts = {
      filetype = {
        java = {
          "cd $dir &&",
          "javac $fileName &&",
          "java $fileNameWithoutExt",
        },
        python = "python3 -u",
        typescript = "bun",
        javascript = "bun",
        reactjavascript = "bun",
        typescriptreact = "bun",
        rust = {
          "cd $dir &&",
          "rustc $fileName &&",
          "$dir/$fileNameWithoutExt",
        },
        markdown = {
          "slides",
        },
      },
    },
    keys = {
      { "<leader>r",  desc = "Code runner" },
      { "<leader>rr", ":RunCode<cr>",      desc = "run code" },
      { "<leader>rf", ":RunFile<cr>",      desc = "run file" },
      { "<leader>rp", ":RunProject<cr>",   desc = "run project" },
      { "<leader>rc", ":RunClose<cr>",     desc = "close" },
    },
  },
    {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup {
        mapping = { "jk", "jj", "kj", "JK", "KJ", "kk" },
      }
    end,
  }

}
