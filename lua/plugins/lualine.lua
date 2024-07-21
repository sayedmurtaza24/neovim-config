return {
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
  },
}
