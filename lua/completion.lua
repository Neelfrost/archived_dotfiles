require'compe'.setup {
    enabled = true;
    autocomplete = true;
    debug = false;
    min_length = 1;
    preselect = 'enable';
    throttle_time = 80;
    source_timeout = 200;
    resolve_timeout = 800;
    incomplete_delay = 400;
    max_abbr_width = 100;
    max_kind_width = 100;
    max_menu_width = 100;
    documentation = true;

    source = {
        omni = {
            kind = "  ",
            filetypes = {'tex'},
        },
        path = {kind = "  "},
        buffer = {kind = "  "},
        nvim_lsp = {kind = "  "},
        nvim_lua = {kind = "  "},
        ultisnips = {kind = "  "},
    };
};

local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

-- -------------------------------- Keybinds -------------------------------- --
-- taken from : https://vi.stackexchange.com/questions/12394/change-keybinding-for-up-down-when-in-vim-popup
-- Auto-complete first option on tab

vim.cmd([[
    inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
    inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
    inoremap <silent><expr> <CR> compe#confirm('<CR>')
    inoremap <silent><expr> <C-Space> compe#complete()
    ]]);
