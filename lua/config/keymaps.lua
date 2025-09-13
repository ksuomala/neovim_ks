--make space the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<space>fd", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
vim.keymap.set("n", "<space>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live grep" })

