-- Compile oacker when pluginlist file changes
vim.cmd([[autocmd BufWritePost pluginlist.lua source <afile> | PackerCompile]])

local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

-- Check if packer is installed, if not install packer
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	print("Installing packer.nvim.")
	vim.fn.system({ "git", "clone", "https://github.com/wbthomason/packer.nvim", install_path })
	vim.cmd([[packadd packer.nvim]])
	print("Installation complete.")
end

local packer = require("packer")

-- Initialize floating window for packer
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "single" })
		end,
	},
	git = {
		clone_timeout = 600, -- Timeout, in seconds, for git clones
	},
})

return packer.startup(function()
	-- Packer
	use("wbthomason/packer.nvim")

	-- Style
	use("kyazdani42/nvim-web-devicons")
	use("lukas-reineke/indent-blankline.nvim")
	use("luochen1990/rainbow")
	use("ryanoasis/vim-devicons")
	use("sainnhe/gruvbox-material")

	-- Lsp stuff
	use({ "psf/black", branch = "stable" })
	use("lervag/vimtex")
	use("neovim/nvim-lspconfig")
	use("glepnir/lspsaga.nvim")
	use("hrsh7th/nvim-compe")
	use("ray-x/lsp_signature.nvim")

	-- Features
	use("axvr/zepl.vim")
	use("b3nj5m1n/kommentary")
	use("christoomey/vim-titlecase")
	use("dense-analysis/ale")
	use("dhruvasagar/vim-open-url")
	use("inkarkat/vim-ingo-library")
	use("inkarkat/vim-SpellCheck")
	use("itchyny/lightline.vim")
	use("junegunn/vim-easy-align")
	use("kevinhwang91/nvim-bqf")
	use("ludovicchabant/vim-gutentags")
	use("nvim-lua/plenary.nvim")
	use("nvim-lua/popup.nvim")
	use("nvim-telescope/telescope.nvim")
	use("phaazon/hop.nvim")
	use("romgrk/barbar.nvim")
	use("sheerun/vim-polyglot")
	use("SirVer/ultisnips")
	use("skywind3000/asyncrun.extra")
	use("skywind3000/asyncrun.vim")
	use("skywind3000/vim-terminal-help")
	use("tpope/vim-repeat")
	use("tpope/vim-surround")
	use("jiangmiao/auto-pairs")
	use({ "glepnir/dashboard-nvim" })
	use({ "kyazdani42/nvim-tree.lua", commit = "10e845e01cb5fe62c952ccedf2edfe4ea78be727" })
	-- use("windwp/nvim-autopairs")
	-- use('honza/vim-snippets')

	-- Automatic initial plugin installation
	if vim.fn.len(vim.fn.globpath(vim.fn.stdpath("data") .. "/site/pack/packer/start", "*", 0, 1)) == 1 then
		vim.cmd([[redraw! | PackerSync]])
	end
end)
