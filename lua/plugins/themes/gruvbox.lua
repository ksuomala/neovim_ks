return {
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            require("gruvbox").setup({
              palette_overrides = {
                bright_green = "#268626",
                bright_aqua = "#2b8c9f"
              }
            })
            vim.cmd([[colorscheme gruvbox]])
            vim.o.background = "dark"
        end

    }
}
