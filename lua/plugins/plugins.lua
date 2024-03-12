return {
  -- disabled plugins
  { "folke/which-key.nvim", enabled = false },
  { "folke/noice.nvim", enabled = false },
  { "Exafunction/codeium.nvim", enabled = false },
  { "nvim-treesitter-context", enabled = false },

  { "Exafunction/codeium.vim" },

  -- kanagawa colorscheme
  {
    "rebelot/kanagawa.nvim",
    opts = {
      transparent = true,
      compile = true,
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
      overrides = function(colors)
        local theme = colors.theme
        return {
          TelescopeTitle = { fg = theme.ui.special, bold = true },
          TelescopePromptNormal = { bg = theme.ui.bg_p1 },
          TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
          TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
          TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
          TelescopePreviewNormal = { bg = theme.ui.bg_dim },
          TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },

          Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
          PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
          PmenuSbar = { bg = theme.ui.bg_m1 },
          PmenuThumb = { bg = theme.ui.bg_p2 },
        }
      end,
    },
  },

  -- Configure LazyVim to load kanagawa
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
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

  -- imports
  { import = "lazyvim.plugins.extras.lang.typescript" },
  { import = "lazyvim.plugins.extras.lang.json" },
  { import = "lazyvim.plugins.extras.lang.go" },
  { import = "lazyvim.plugins.extras.lang.rust" },
  { import = "lazyvim.plugins.extras.lang.python" },
  { import = "lazyvim.plugins.extras.lang.omnisharp" },
  { import = "lazyvim.plugins.extras.lang.docker" },
  { import = "lazyvim.plugins.extras.lang.markdown" },
  { import = "lazyvim.plugins.extras.lang.terraform" },
  { import = "lazyvim.plugins.extras.linting.eslint" },
  { import = "lazyvim.plugins.extras.formatting.prettier" },

  { "ziglang/zig.vim" },

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

  { "tiagovla/scope.nvim", lazy = false },

  {
    "tpope/vim-dadbod",
  },

  {
    "kristijanhusak/vim-dadbod-ui",
    cmd = "DBUI",
    config = function()
      vim.g.db_ui_save_location = "~/.dadbod-ui/queries"
    end,
  },

  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
}
