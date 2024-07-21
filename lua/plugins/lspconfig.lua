return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    inlay_hints = {
      enabled = false,
    },
    document_highlight = {
      enabled = false,
    },
    capabilities = {
      textDocument = {
        completion = {
          completionItem = {
            snippetSupport = false,
          },
        },
      },
    },
  },
}
