return {
  "linux-cultist/venv-selector.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "nvim-telescope/telescope.nvim",
    "mfussenegger/nvim-dap",
    "mfussenegger/nvim-dap-python",
  },
  lazy = false,
  branch = "regexp", -- use the new v2, remove this line if you want v1
  config = function()
    require("venv-selector").setup({
      search = {
        conda_envs = {
          command = "fd python$ /opt/miniconda3/envs --full-path --color never",
        },
      },
    })
  end,
  keys = {
    { "<leader>vs", "<cmd>VenvSelect<cr>" },
    { "<leader>vc", "<cmd>VenvSelectCached<cr>" },
  },
}
