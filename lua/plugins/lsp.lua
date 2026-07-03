return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = { enabled = true };
      },
      inlay_hints = { enabled = false },
    },
  },
}
