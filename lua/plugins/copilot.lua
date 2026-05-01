return {
  "zbirenbaum/copilot.lua",
  opts = {
    suggestion = {
      enabled = true,
      auto_trigger = false, -- This is the magic line for "Learning Mode"
      keymap = {
        accept = "<M-l>", -- Alt+L to accept a suggestion
        next = "<M-]>",
        prev = "<M-[>",
        dismiss = "<C-]>",
      },
    },
  },
}
