-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local space_2 = {
  expandtab = "",
  tabstop = "2",
  shiftwidth = "2",
}

local space_4 = {
  expandtab = "",
  tabstop = "4",
  shiftwidth = "4",
}

local tab_4 = {
  noexpandtab = "",
  tabstop = "4",
  shiftwidth = "4",
}

local langs = {
  javascript = space_2,
  typescript = space_2,
  typescriptreact = space_2,
  go = tab_4,
  rust = space_4,
  c = tab_4,
  cpp = tab_4,
  lua = space_2,
  cs = space_4,
  proto = space_2,
}

for lang, options in pairs(langs) do
  local command = "autocmd FileType " .. lang .. " setlocal"
  for opt, val in pairs(options) do
    if string.len(val) < 1 then
      command = command .. " " .. opt
    else
      command = command .. " " .. opt .. "=" .. val
    end
  end
  vim.cmd(command)
end
