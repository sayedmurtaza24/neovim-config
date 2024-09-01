return {
  -- disabled plugins
  { "folke/which-key.nvim", enabled = false },
  { "folke/noice.nvim", enabled = false },
  { "Exafunction/codeium.nvim", enabled = false },
  { "nvim-treesitter-context", enabled = false },
  { "nvim-treesitter-context", enabled = false },
  { "folke/trouble.nvim", enabled = false },

  { "norcalli/nvim-colorizer.lua" },

  {
    "mbbill/undotree",
    lazy = true,
    cmd = "UndotreeToggle",
    keys = {
      { "<leader>uu", "<cmd>UndotreeToggle<cr>", desc = "Undotree" },
    },
  },

  -- Configure LazyVim to load kanagawa
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "duskfox",
    },
  },

  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        always_show_bufferline = true,
      },
    },
  },

  { "ziglang/zig.vim", lazy = true },

  {
    "echasnovski/mini.comment",
    lazy = true,
    opts = {
      mappings = {
        comment = "gc",
        comment_line = "gcc",
        comment_visual = "gc",
        textobject = "gc",
      },
    },
  },

  {
    "akinsho/toggleterm.nvim",
    lazy = true,
    cmd = "ToggleTerm",
    opts = {
      size = function(term)
        if term.direction == "float" then
          return vim.o.columns * 0.8, vim.o.lines * 0.8
        end
      end,
      float_opts = {
        border = "curved",
      },
      highlights = {
        FloatBorder = {
          guifg = "#333333",
        },
      },
    },
  },

  {
    "SmiteshP/nvim-navbuddy",
    cmd = "NavBuddy",
    lazy = true,
    dependencies = {
      "SmiteshP/nvim-navic",
      "MunifTanjim/nui.nvim",
      "neovim/nvim-lspconfig",
    },
    keys = {
      { "<leader>nv", "<cmd>Navbuddy<cr>" },
    },
    opts = {
      lsp = { auto_attach = true },
      window = {
        border = "rounded",
        size = {
          width = "90%",
          height = "80%",
        },
        sections = {
          left = {
            size = "20%",
          },
          mid = {
            size = "35%",
          },
          right = {
            preview = "always",
          },
        },
      },
    },
  },

  {
    "tpope/vim-dadbod",
    lazy = true,
  },

  {
    "kristijanhusak/vim-dadbod-ui",
    lazy = true,
    cmd = "DBUI",
    config = function()
      vim.g.db_ui_save_location = "~/.dadbod-ui/queries"
    end,
  },

  {
    "knubie/vim-kitty-navigator",
    cmd = {
      "KittyNavigateLeft",
      "KittyNavigateDown",
      "KittyNavigateUp",
      "KittyNavigateRight",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>KittyNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>KittyNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>KittyNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>KittyNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>KittyNavigatePrevious<cr>" },
    },
  },
}
