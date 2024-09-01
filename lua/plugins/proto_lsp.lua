return {
  "proto_lsp",
  dev = true,
  lazy = true,
  ft = "proto",
  config = function()
    local lspconfig = require("lspconfig")
    local configs = require("lspconfig.configs")

    if not configs.proto_lsp then
      configs.proto_lsp = {
        default_config = {
          on_attach = function(client, _)
            client.server_capabilities.documentFormattingProvider = false
            client.server_capabilities.documentRangeFormattingProvider = false
          end,
          cmd = { "pls" },
          filetypes = { "proto" },
          root_dir = require("lspconfig.util").root_pattern(".git", "."),
        },
      }
    end

    lspconfig.proto_lsp.setup({})
  end,
}
