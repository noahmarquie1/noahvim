-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.keymap.set("n", "<leader>t", function()
  Snacks.terminal(nil, {
    cwd = vim.uv.cwd(),
    win = {
      relative = "win",
      position = "bottom",
      height = 0.3,
    },
  })
end, { desc = "Toggle Terminal (launch dir)" })
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { silent = true })
