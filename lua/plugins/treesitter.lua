return {
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
          "nvim-treesitter/nvim-treesitter-textobjects",
        },
        branch = 'master',
        lazy = false,
        build = ":TSUpdate"
    }
}

