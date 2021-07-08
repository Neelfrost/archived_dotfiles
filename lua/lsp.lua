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
	"   (TypeParameter)"
};

local nvim_lsp = require('lspconfig')
local servers = {'pyright'}

for _, lsp in ipairs(servers) do
	nvim_lsp[lsp].setup {
		on_attach = on_attach,
	}
end

-- -------------------------------- Keybinds -------------------------------- --

vim.cmd([[
	nnoremap <silent> gD    <cmd> lua vim.lsp.buf.declaration()<CR>
	nnoremap <silent> gd    <cmd> lua vim.lsp.buf.definition()<CR>
	nnoremap <silent> gh    <cmd> lua vim.lsp.buf.hover()<CR>
	nnoremap <silent> gi    <cmd> lua vim.lsp.buf.implementation()<CR>
	nnoremap <silent> gr    <cmd> lua vim.lsp.buf.references()<CR>
	nnoremap <silent> gR    <cmd> lua vim.lsp.buf.rename()<CR>
	nnoremap <silent> <C-k> <cmd> lua vim.lsp.buf.signature_help()<CR>
	nnoremap <silent> <C-n> <cmd> lua vim.lsp.diagnostic.goto_prev()<CR>
	nnoremap <silent> <C-p> <cmd> lua vim.lsp.diagnostic.goto_next()<CR>
	]]);
