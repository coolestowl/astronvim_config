return {
  plugins = {
    {
      "nvim-neo-tree/neo-tree.nvim",
      opts = {
        filesystem = {
          filters = {
            show_hidden = true,
          }
        }
      }
    }
  }
}

