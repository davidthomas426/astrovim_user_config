return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "debugloop/telescope-undo.nvim",
  },
  opts = {
    extensions = {
      undo = {},
    },
    pickers = {
        find_files = {
          hidden = true,
        },
        buffers = {
          path_display = { "smart" },
          mappings = {
            i = { ["<c-d>"] = require("telescope.actions").delete_buffer },
            n = { ["d"] = require("telescope.actions").delete_buffer },
          },
        },
      },
  },
  config = function(...)
    require("plugins.configs.telescope")(...)
    local telescope = require("telescope")
    telescope.load_extension("undo")
  end,
}
