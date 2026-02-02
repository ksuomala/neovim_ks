--enable line numbers
vim.opt.nu = true
vim.opt.clipboard = "unnamed"
--relativve line numbers
vim.opt.relativenumber = true

-- Global indentation defaults
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

-- Ruby indentation: 2 spaces
vim.api.nvim_create_autocmd("FileType", {
    pattern = "ruby",
    callback = function()
        vim.bo.shiftwidth = 2
        vim.bo.tabstop = 2
        vim.bo.softtabstop = 2
    end,
})

-- Lua indentation : 4 spaces
vim.api.nvim_create_autocmd("FileType", {
    pattern = "lua",
    callback = function()
        vim.bo.shiftwidth = 2
        vim.bo.tabstop = 2
        vim.bo.softtabstop = 2
    end,
})
