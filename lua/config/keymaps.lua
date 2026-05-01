-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Track the state manually since to_json might be nil
-- The "Clean" LazyVim Toggle for Copilot

vim.keymap.set("n", "<leader>ua", function()
  local suggestion = require("copilot.suggestion")

  -- Get current state from the suggestion module
  local current_state = vim.g.copilot_auto_trigger or true

  if current_state then
    -- Turn off auto-trigger
    vim.g.copilot_auto_trigger = false
    suggestion.dismiss()
    vim.notify("Copilot: Learning Mode (Manual-only)", vim.log.levels.INFO)
  else
    -- Turn on auto-trigger
    vim.g.copilot_auto_trigger = true
    vim.notify("Copilot: Productivity Mode (Auto-on)", vim.log.levels.INFO)
    suggestion.next()
  end
end, { desc = "Toggle Copilot Auto-Trigger" })
