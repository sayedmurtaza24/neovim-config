return {
  -- disabled plugins
  { "folke/which-key.nvim", enabled = false },
  { "folke/noice.nvim", enabled = false },
  { "Exafunction/codeium.nvim", enabled = false },
  { "nvim-treesitter-context", enabled = false },

  { "norcalli/nvim-colorizer.lua" },

  {
    "hudclark/grpc-nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- {
  --   "Exafunction/codeium.vim",
  --   config = function()
  --     vim.g.codeium_no_map_tab = 1
  --   end,
  -- },

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
      checker = {
        -- automatically check for plugin updates
        enabled = true,
        notify = true, -- get a notification when new updates are found
        frequency = 3600 * 24 * 3, -- check for updates every hour * 24 * 3
        check_pinned = false, -- check for pinned packages that can't be updated
      },
      colorscheme = "tokyonight-moon",
    },
  },

  {
    "VidocqH/lsp-lens.nvim",
    enabled = false,
    opts = {
      include_declaration = false,
      sections = {
        definition = true,
        references = true,
        implements = true,
        git_authors = true,
      },
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

  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "arkav/lualine-lsp-progress" },
    opts = {
      sections = {
        lualine_x = {
          {
            "lsp_progress",
            separators = {
              component = " ",
              progress = " | ",
              percentage = { pre = "", post = "%% " },
              title = { pre = "", post = ": " },
              lsp_client_name = { pre = "[", post = "]" },
              spinner = { pre = "", post = "" },
              message = { commenced = "In Progress", completed = "Completed" },
            },
            display_components = { "lsp_client_name", "spinner", { "title", "percentage", "message" } },
            timer = { progress_enddelay = 500, spinner = 1000, lsp_client_name_enddelay = 1000 },
            spinner_symbols = { "🌑 ", "🌒 ", "🌓 ", "🌔 ", "🌕 ", "🌖 ", "🌗 ", "🌘 " },
          },
          "diff",
          "encoding",
        },
      },
      options = {
        theme = "horizon",
      },
    },
  },

  { "ziglang/zig.vim", lazy = true },

  {
    "echasnovski/mini.comment",
    opts = {
      mappings = {
        comment = "<leader>/",
        comment_line = "<leader>/",
        comment_visual = "<leader>/",
        textobject = "<leader>/",
      },
    },
  },

  {
    "akinsho/toggleterm.nvim",
    lazy = false,
    version = "*",
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
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "SmiteshP/nvim-navbuddy",
        dependencies = {
          "SmiteshP/nvim-navic",
          "MunifTanjim/nui.nvim",
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
    },
  },

  {
    "tpope/vim-dadbod",
    lazy = true,
  },

  {
    "kristijanhusak/vim-dadbod-ui",
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
