-- -------------------------------- Settings -------------------------------- --

vim.lsp.protocol.CompletionItemKind = {
	"   (Text) ",
	"   (Method)",
	"   (Function)",
	"   (Constructor)",
	" ﴲ  (Field)",
	"[] (Variable)",
	"   (Class)",
	" ﰮ  (Interface)",
	"   (Module)",
	" 襁 (Property)",
	"   (Unit)",
	"   (Value)",
	" 練 (Enum)",
	"   (Keyword)",
	"   (Snippet)",
	"   (Color)",
	"   (File)",
	"   (Reference)",
	"   (Folder)",
	"   (EnumMember)",
	" ﲀ  (Constant)",
	" ﳤ  (Struct)",
	"   (Event)",
	"   (Operator)",
	"   (TypeParameter)",
}

local nvim_lsp = require("lspconfig")
local servers = { "pyright" }

for _, lsp in ipairs(servers) do
	nvim_lsp[lsp].setup({})
end

-- Lua lsp
local sumneko_root_path = "C:\\tools\\lua-language-server\\server"
local sumneko_binary = "C:\\tools\\lua-language-server\\server\\bin\\lua-language-server.exe"

local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require("lspconfig").sumneko_lua.setup({
	cmd = { sumneko_binary, "-E", sumneko_root_path .. "/main.lua" },
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = "LuaJIT",
				-- Setup your lua path
				path = runtime_path,
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { "vim" },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		},
	},
})

-- -------------------------------- Keybinds -------------------------------- --

vim.cmd([[
	nnoremap <silent> gD <cmd> lua vim.lsp.buf.declaration()<CR>
	nnoremap <silent> gd <cmd> lua vim.lsp.buf.definition()<CR>
	nnoremap <silent> gh <cmd> lua vim.lsp.buf.hover()<CR>
	nnoremap <silent> gi <cmd> lua vim.lsp.buf.implementation()<CR>
	nnoremap <silent> gR <cmd> lua vim.lsp.buf.references()<CR>
	nnoremap <silent> gr <cmd> lua vim.lsp.buf.rename()<CR>
	nnoremap <silent> <C k> <cmd> lua vim.lsp.buf.signature_help()<CR>
	nnoremap <silent> <C-n> <cmd> lua vim.lsp.diagnostic.goto_prev()<CR>
	nnoremap <silent> <C-p> <cmd> lua vim.lsp.diagnostic.goto_next()<CR>
	]])
