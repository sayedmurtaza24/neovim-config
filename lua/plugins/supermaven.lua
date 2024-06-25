return {
  "supermaven-inc/supermaven-nvim",
  enabled = false,
  opts = {
    keymaps = {
      accept_suggestion = "<A-tab>",
      clear_suggestion = "<C-]>",
      accept_word = "<C-j>",
    },
    ignore_filetypes = { cpp = true },
    disable_inline_completion = false, -- disables inline completion for use with cmp
    disable_keymaps = false, -- disables built in keymaps for more manual control
  },
}
