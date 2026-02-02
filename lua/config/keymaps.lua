--make space the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Move line up/down in normal mode
vim.keymap.set("n", "√", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "ª", ":m .-2<CR>==", { desc = "Move line up" })

-- Move selected lines up/down in visual mode
vim.keymap.set("v", "√", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "ª", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<space>fd", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
vim.keymap.set("n", "<space>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live grep" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})

vim.keymap.set('n', '<leader>gd', vim.lsp.buf.references, { desc = 'Go to references' })
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
vim.keymap.set("n", "<Down>",  "<C-w>j", { desc = "Window down" })
vim.keymap.set("n", "<Left>",  "<C-w>h", { desc = "Window down" })
vim.keymap.set("n", "<Up>",    "<C-w>k", { desc = "Window up" })
vim.keymap.set("n", "<Right>", "<C-w>l", { desc = "Window right" })
