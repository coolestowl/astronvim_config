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
  },
  polish = function()
    vim.o.autoread = true
    vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
      command = "if mode() != 'c' | checktime | endif",
      pattern = { "*" },
    })
    vim.api.nvim_create_autocmd({ "FileChangedShellPost" }, {
      pattern = { "*" },
      callback = function()
        vim.notify("File changed on disk. Buffer reloaded.", vim.log.levels.INFO, {
          title = "user/init.lua -> polish -> autocmd",
        })
      end,
    })
  end
}
