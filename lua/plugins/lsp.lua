return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = { enabled = false };
      },
      inlay_hints = { enabled = false },
    },
  },
}
