-- -------------------------------- Settings -------------------------------- --

require("hop").setup({})

-- -------------------------------- Keybinds -------------------------------- --

vim.api.nvim_set_keymap("n", "s", "<cmd>HopChar2<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>f", "<cmd>HopChar1<CR>", {})
