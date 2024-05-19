return {
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      dim_inactive = false,
      transparent_mode = false,
    },
  },
  {
    "embark-theme/vim",
    name = "embark",
  },
  {
    "catppuccin/nvim",
    lazy = false,
    enabled = true,
    name = "catppuccin",
    opts = {
      transparent_background = false,
    },
  },
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent_bg = false,
    },
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    opts = {
      transparent = false,
    },
  },
  {
    "AlexvZyl/nordic.nvim",
    opts = {
      transparent_bg = false,
      telescope = {
        -- Available styles: `classic`, `flat`.
        style = "flat",
      },
    },
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      variant = "main", -- auto, main, moon, or dawn
      dark_variant = "main", -- main, moon, or dawn
      dim_inactive_windows = false,
      extend_background_behind_borders = true,
      styles = {
        transparency = false,
      },
    },
  },
  -- kanagawa colorscheme
  {
    "rebelot/kanagawa.nvim",
    opts = {
      transparent = true,
      compiled = false,
      theme = "wave",
      keywordStyle = { italic = false, bold = false },
      statementStyle = { bold = true },
      colors = {
        palette = {
          fujiWhite = "#cfcbbe", -- default foreground
          springViolet1 = "#cfcbbe", -- light foreground
          springViolet2 = "#9CABCA", -- brackets, punctuations
          carpYellow = "#86b0bd", -- identifiers
          surimiOrange = "#b39279", -- constants, imports, booleans
          autumnYellow = "#d1b997", -- git change
          springGreen = "#6db074", -- strings
          boatYellow2 = "#cfc1a9", -- operators, regex
          crystalBlue = "#67aad6", -- functions, titles
          waveAqua2 = "#80ad8b", -- types
          springBlue = "#b191db", -- builtins, special
          oniViolet = "#b191db", -- statements, keywords, curlies
        },
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

  {
    "EdenEast/nightfox.nvim",
    opts = {
      options = {
        transparent = false,
      },
    },
  }, -- lazy
}
