return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  opts = function()
    local logo = [[
    







█ █▀█ █▀▀▀▀▀▀ █▀▀▀▀▀█ █▀▀▀▀▀▀ █ █▀█▀▀ █▀▀▀█ ▀▀█▀█▀█▀▀ ▀▀▀▀▀
█ ▀█▀ █ █▀▀▀█▀█ █▀█ ▀ █ █▀▀ █ █ █ ▀ ▀▀▀ ▀▀▀ ▀▀▀ ▀ ▀▀▀ ▀▀▀▀█
█ █▀█ ▀ ▀▀▀▀▀ ▀ ▀▀▀▀▀▀▀ ▀▀▀ █ █ █ █▀█▀█▀█▀█▀█ ▀▀█ █▀█ ▀▀▀▀█
▀ ▀ █ ▀▀▀▀▀▀▀▀█ █▀█▀█▀▀▀▀▀▀ ▀ ▀ ▀ ▀ ▀ ▀ ▀ ▀▀█ █▀█ ▀▀▀ ▀▀█▀█
█▀█ ▀ █▀█▀█▀█ █ ▀▀▀ ▀ ▀▀█▀█ █▀█ ▀▀▀▀▀▀▀ █▀█▀▀▀▀▀▀ ▀▀▀▀▀ ▀▀▀
█ █▀█ █ ▀ ▀ ▀▀█ █▀█▀█ ▀▀▀ █▀▀▀█ ▀▀█▄█▀█ █ █ ▀▀█▄█▀█ ▀▀█▄█▀█
▀ ▀▀▀ ▀ █ █▀█ ▀ █▀▀ █ █▀█ █ █▀█ ▀▀▀ ▀▀▀ ▀▀▀ ▀▀▀ ▀▀▀ ▀▀▀ ▀▀▀
█▀▀▀▀▀▀▀▀ ▀▀▀ █▀█▀█ █ █▀▀ ▀ ▀▀▀ █▀█▀█▀█ █▀█▀█▀█ █▀▀▀█ ▀▀▀▀▀
█▀█ █ ▀ █ █ █ ▀▀█▀▀ ▀ ▀▀▀ █▀█▀█ ▀ ▀▀▀ █ ▀ ▀ ▀ █ ▀▀▀▀▀ ▀▀▀▀█
▀▀▀ ▀▀▀▀▀ ▀▀▀ ▀ █▀█▀▀ █▀█ ▀▀█▀▀ ▀▀▀▀█ ▀ ▀▀▀▀▀ ▀ ▀▀█ █▀█ █▀█
█▀▀ █ █▀█ █ █▀█ █ █ █▀▀▀▀ █▀█▀█ █▀█ █ █ ▀▀█ █▀█ █▀█ ▀ ▀ ▀▀▀
█▀█ █▀▀▀▀ █▀▀▀▀ █ ▀ █▀▀▀▀ ▀▀▀ █ █ █▀█ █ ▀▀█ ▀▀█ ▀▀▀ ▀▀▀▀▀▀▀
▀▀▀ █▀█▀▀ ▀▀▀▀▀ █▀█ ▀▀▀▀▀ ▀ ▀▀▀ ▀▀▀ █ ▀ ▀▀█ ▀▀▀ ▀▀█ ▀▀█▄█▀█
█▀█ █ █ █▀█▄█▀▀ █▀▀ ▀▀▀▀▀▀▀ █▀█ █▀█▀▀ █▀█ █ █ █▀█ █ ▀▀▀ ▀▀▀
█ ▀ █▀▀ ▀▀▀ ▀▀▀ █ █ █▀▀▀▀ ▀ █ █ ▀ ▀▀█ █ █▀█ █ █ █▀█ █ █▀█▀█
▀▀▀ ▀▀█ █▀▀ █▀█ █ █ █ █▀█ ▀ ▀▀█ █▀▀ █ ▀▀▀ ▀▀▀ ▀▀▀ █ █ ▀▀█▀▀
▀▀▀▀▀ █ ▀▀▀▀▀▀▀ ▀▀▀ ▀▀▀▀▀ █▀█▀▀ ▀▀▀▀▀ █ █ █▀█ ▀▀▀▀█▀█ █▀█▀█
█ █▀█ █ █▀█ █ █▀█ █▀█ ▀▀█ ▀ ▀ █▀▀▀█ █ █ ▀▀▀ █ █▀█ ▀▀▀ ▀▀▀ █
█▀▀▀▀ ▀▀▀ ▀▀▀ █ ▀ █▀█ █ █▀▀▀█ ▀▀█▀▀ █ █ ▀▀█▀▀ ▀▀█ ▀▀▀▀▀ ▀▀▀
█▀█ █▀█▄█▀▀▀▀ █▀▀ ▀ ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀ ▀ █ ▀ ▀▀▀▀▀ ▀▀▀▀█ █ █
█▀▀ ▀▀▀ ▀▀▀▀▀ █ █ █ █ █ ▀▀▀▀▀ █ █▀█ ▀ ▀ █ ▀▀█ ▀▀█ ▀ ▀ ▀▀█ █
█▀▀ ▀▀█ █ █▀█ ▀▀▀ ▀█▀ █ █ █▀█ ▀▀▀▀▀ █ █ █ ▀▀█ █▀▀ ▀▀▀▀▀ ▀▀▀
█▀▀ █▀█ ▀▀▀▀▀ █ █ █▀█ █ ▀▀█▀▀ ▀▀▀▀▀▀▀ █ ▀ █▀▀ ▀▀█ ▀▀▀▀█ █ █
█▀▀ ▀▀█ █▀█ ▀▀▀ █ ▀▀▀ ▀ █ █ █▀█ █ █ █ █ ▀▀█ ▀▀▀▀▀ █ █▀█ ▀█▀
▀▀▀▀▀ ▀▀█▀█ █▀█ █ █▀▀▀█ █ ▀▀▀▀▀▀▀▀▀▀▀▀▀ ▀▀█▀█ █▀█ █ ▀▀█ █▀█
▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀▀▀▀ ▀ ▀▀█▀█ █▀█ █▀█ █▀█ ▀▀▀ ▀▀▀▀▀ ▀▀█ ▀▀▀
█ █▀█ █▀█ ▀ █ █▀▀▀█▀█ █ █ ▀▀▀ ▀▀█ █▀▀▀█▀█ █ ▀▀█ █ █ █▀█▀▀▀█
█ █ ▀▀▀▀▀ █ █ ▀▀▀ ▀▀▀ ▀█▀ █▀█ ▀▀▀ ▀▀▀ ▀▀▀▀▀ ▀▀▀▀▀ █ ▀▀▀ █ ▀
█ ▀ █▀█ █▀█ █ █ █▀█ █ █▀█ ▀▀█ █▀█ █ █ █ █ █▀█ ▀▀█ ▀ ▀▀█ █ █
▀▀▀▀▀▀▀ ▀▀▀▀▀ ▀▀▀▀▀▀▀ ▀▀▀ ▀▀▀ ▀▀▀▀▀▀▀▀▀▀▀ ▀▀▀ ▀▀▀▀▀▀▀▀▀ ▀▀▀
    ]]

    vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#458588" })

    local opts = {
      theme = "doom",
      hide = {
        -- this is taken care of by lualine
        -- enabling this messes up the actual laststatus setting after loading a file
        statusline = false,
      },
      config = {
        header = vim.split(logo, "\n"),
        center = {
          { action = 'lua require("persistence").load()', desc = " Restore Session", icon = " ", key = "s" },
        },
        footer = function()
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
        end,
      },
    }

    for _, button in ipairs(opts.config.center) do
      button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
      button.key_format = "  %s"
    end

    -- close Lazy and re-open when the dashboard is ready
    if vim.o.filetype == "lazy" then
      vim.cmd.close()
      vim.api.nvim_create_autocmd("User", {
        pattern = "DashboardLoaded",
        callback = function()
          require("lazy").show()
        end,
      })
    end

    return opts
  end,
}
