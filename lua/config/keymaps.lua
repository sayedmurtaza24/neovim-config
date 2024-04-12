-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- codeium
vim.g.codeium_disable_bindings = true
vim.api.nvim_set_keymap("i", "<A-tab>", "codeium#Accept()", { silent = true, expr = true })
vim.api.nvim_set_keymap("n", "<A-tab>", "codeium#Chat()", { silent = true, expr = true })

-- save and quit
vim.cmd("command! W :w")
vim.cmd("command! Wq :wq")
vim.cmd("command! Q :q")
vim.cmd("command! Qa :qa")
vim.cmd("command! WA :wa")
vim.cmd("command! QA :qa")

-- end of line
vim.keymap.set({ "v", "n" }, "$", function()
  vim.cmd("normal! $")
  vim.cmd("normal! h")
end, { noremap = true, silent = true })

-- diagnostics
vim.keymap.set("n", "<leader>gd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })

-- bufferline
vim.keymap.set("n", "<leader>x", require("bufferline").close_with_pick, { desc = "Pick Close Buffer" })

-- tabs
vim.keymap.set("n", "<leader>tn", "<cmd>tabnew<cr>", { desc = "New Tab" })
vim.keymap.set("n", "<leader>ll", "<cmd>tabnext<cr>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader>hh", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
vim.keymap.set("n", "<leader>tc", "<cmd>tabclose<cr>", { desc = "Close Tab" })

-- quickfix
vim.keymap.set({ "n", "v" }, "<leader>ca", "<cmd>Telescope quickfix<cr>", { desc = "Open Quickfix" })

-- lsp
vim.keymap.set({ "n", "v" }, "gi", "<cmd>Telescope lsp_implementations<cr>", { desc = "LSP Implementations" })
vim.keymap.set({ "n", "v" }, "<leader>ra", vim.lsp.buf.rename, { desc = "Rename" })

-- navbuddy
vim.keymap.set("n", "<leader>nv", "<cmd>Navbuddy<cr>", { desc = "Navbuddy" })

-- terminal
vim.keymap.set({ "n", "t" }, "<C-b>", function()
  vim.cmd("ToggleTerm direction=float")
end, { desc = "Toggle Terminal" })

-- cursor while typing
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "Cursor Left" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "Cursor Right" })

vim.keymap.set("n", "<tab>", function()
  require("mini.ai").select_textobject("i", "a", {
    n_times = 1,
  })
end, { noremap = true })

vim.keymap.set("v", "<tab>", function()
  require("mini.ai").select_textobject("i", "a", {
    n_times = 2,
  })
end, { noremap = true })
