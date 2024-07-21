return {
  "goplsmock",
  dependencies = {
    "neovim/nvim-lspconfig",
  },
  dev = true,
  config = function()
    require("lspconfig.configs").gopls_mock = require("lspconfig.server_configurations.gopls")
    require("lspconfig").gopls_mock.setup({
      autostart = false,
      settings = {
        gopls = {
          buildFlags = { "-tags=mock" },
          gofumpt = false,
          analyses = {
            fieldalignment = false,
          },
        },
      },
    })
  end,
}
