-- Map only when dashboard is open
vim.api.nvim_buf_set_keymap(0, "", "1", "<cmd>Telescope oldfiles<CR>", {})
vim.api.nvim_buf_set_keymap(0, "", "2", "<cmd>Telescope find_files<CR>", {})
vim.api.nvim_buf_set_keymap(0, "", "3", "<cmd>DashboardNewFile<CR>", {})
vim.api.nvim_buf_set_keymap(0, "", "4", "<cmd>Telescope marks<CR>", {})
vim.api.nvim_buf_set_keymap(0, "", "5", "<cmd>SessionLoad<CR>", {})
