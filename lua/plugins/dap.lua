return {
  "mfussenegger/nvim-dap",


  -- stylua: ignore
  keys = function()
    return {
      { "<leader>if", function() require("dap").set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, desc = "Breakpoint Condition" },
      { "<C-.>", function() require("dap").toggle_breakpoint() end, desc = "Toggle Breakpoint" },
      { "<C-,>", function() require("dap").step_over() end, desc = "Step Over" },
      { "<C-;>", function() require("dap").run_to_cursor() end, desc = "Run to Cursor" },
      { "<C-/>", function() require("dap").step_into() end, desc = "Step Into" },
      { "<C-c>", function() require("dap").continue() end, desc = "Continue" },
      { "<C-S-x>", function() require("dap").terminate() end, desc = "Terminate" },
      { "D", function() require("dap.ui.widgets").hover() end, desc = "Widgets" },
      { "<C-\\>", function() require("dap").step_out() end, desc = "Step Out" },
      { "<leader>dj", function() require("dap").down() end, desc = "Down" },
      { "<leader>dk", function() require("dap").up() end, desc = "Up" },
      { "<leader>dl", function() require("dap").run_last() end, desc = "Run Last" },
      { "<leader>dp", function() require("dap").pause() end, desc = "Pause" },
      { "<leader>dr", function() require("dap").repl.toggle() end, desc = "Toggle REPL" },
      { "<leader>ds", function() require("dap").session() end, desc = "Session" },
      }
  end,
}
