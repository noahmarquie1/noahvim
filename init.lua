-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.keymap.set('n', '<leader>t', ':botright 15split | terminal<CR>i', { silent = true })
