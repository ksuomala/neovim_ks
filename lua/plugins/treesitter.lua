return {
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
          "nvim-treesitter/nvim-treesitter-textobjects",
        },
        branch = 'master',
        lazy = false,
        build = ":TSUpdate",
        opts = {
            ensure_installed = {
                "markdown",
                "markdown_inline",
                "lua",
                "vim",
                "vimdoc",
                "ruby",
                "javascript",
                "typescript",
                "json",
                "yaml",
                "bash",
                "embedded_template",
                "html",
                "css",
            },
            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            },
        },
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
        end,
    }
}
