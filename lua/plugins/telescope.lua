return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>/", false },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>fw", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
    { "<leader>fr", "<cmd>Telescope resume<cr>", desc = "Resume" },
  },
}
