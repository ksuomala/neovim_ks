return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  -- better: put keymaps here so lazy can load Telescope on demand
  keys = {
    { "<space>fd", function() require("telescope.builtin").find_files() end, desc = "Find files" },
    { "<space>fg", function() require("telescope.builtin").live_grep() end,  desc = "Live grep"  },
  },
  config = function()
    require("telescope").setup({})
    pcall(require("telescope").load_extension, "fzf")
  end,
}
