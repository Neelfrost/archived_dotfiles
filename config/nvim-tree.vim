" --------------------------------- Settings --------------------------------- "

let g:nvim_tree_auto_close = 1
let g:nvim_tree_group_empty = 1
let g:nvim_tree_highlight_opened_files = 1
" let g:nvim_tree_indent_markers = 1
let g:nvim_tree_quit_on_open = 1
let g:nvim_tree_side = 'right'
let g:nvim_tree_width = 24
let g:nvim_tree_follow = 1
let g:nvim_tree_hijack_cursor = 1
let g:nvim_tree_update_cwd = 1
let g:nvim_tree_show_icons = {
            \ 'git': 0,
            \ 'folders': 1,
            \ 'files': 1,
            \ 'folder_arrows': 1,
            \}

" --------------------------------- Keybinds --------------------------------- "

nnoremap <C-b> :NvimTreeToggle<CR>

lua << EOF
local tree_cb = require'nvim-tree.config'.nvim_tree_callback
vim.g.nvim_tree_bindings = {
    ["<CR>"]           = tree_cb("edit"),
    ["o"]              = tree_cb("edit"),
    ["<2-LeftMouse>"]  = tree_cb("edit"),
    ["<2-RightMouse>"] = tree_cb("cd"),
    ["<C-CR>"]         = tree_cb("cd"),  -- Ctrl Enter to cd into folder
    ["<C-v>"]          = tree_cb("vsplit"),
    ["<C-x>"]          = tree_cb("split"),
    ["<C-t>"]          = tree_cb("tabnew"),
    ["<"]              = tree_cb("prev_sibling"),
    [">"]              = tree_cb("next_sibling"),
    ["<BS>"]           = tree_cb("close_node"),
    ["<S-CR>"]         = tree_cb("close_node"),
    ["<Tab>"]          = tree_cb("preview"),
    ["I"]              = tree_cb("toggle_ignored"),
    ["H"]              = tree_cb("toggle_dotfiles"),
    ["R"]              = tree_cb("refresh"),
    ["a"]              = tree_cb("create"),
    ["d"]              = tree_cb("remove"),
    ["r"]              = tree_cb("rename"),
    ["<C-r>"]          = tree_cb("full_rename"),
    ["x"]              = tree_cb("cut"),
    ["c"]              = tree_cb("copy"),
    ["p"]              = tree_cb("paste"),
    ["y"]              = tree_cb("copy_name"),
    ["Y"]              = tree_cb("copy_path"),
    ["gy"]             = tree_cb("copy_absolute_path"),
    ["[c"]             = tree_cb("prev_git_item"),
    ["]c"]             = tree_cb("next_git_item"),
    ["-"]              = tree_cb("dir_up"),
    ["q"]              = tree_cb("close"),
    }
EOF
