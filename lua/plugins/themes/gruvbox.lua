return {
    {
        "sainnhe/gruvbox-material",
        priority = 1000,
        config = function()
            vim.g.gruvbox_material_colors_override = {
                green = { "#268626", "142" },
                aqua  = { "#2b8c9f", "108" },
            }
            vim.g.gruvbox_material_background = "hard"
            vim.g.gruvbox_material_foreground = "original"
            vim.g.gruvbox_material_better_performance = 1
            vim.g.gruvbox_material_enable_italic = 1
            vim.o.background = "dark"
            vim.cmd.colorscheme("gruvbox-material")
        end
    }
}
