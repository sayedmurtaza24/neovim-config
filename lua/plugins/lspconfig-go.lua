return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      gopls = {
        settings = {
          gopls = {
            gofumpt = false,
            analyses = {
              fieldalignment = false,
            },
          },
        },
      },
    },
  },
}
