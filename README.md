Just another visually appealing Neovim IDE. Currently supports LaTeX, Python, and Lua.

# Screenshots 📷

Using [Neovim-qt](https://github.com/equalsraf/neovim-qt) + [Gruvbox Material](https://github.com/sainnhe/gruvbox-material) + [Cascadia Code NF](https://www.nerdfonts.com/font-downloads)

![start](.assets/start.png "Startify Start Screen")
![explorer](.assets/explorer.png "NvimTree File Explorer")
![navigation](.assets/finder.png "Ctrl-P Fuzzy Finder")
![tex](.assets/tex.png "LaTeX Preview")
![python](.assets/py.png "Python Preview")

---

# Installation ⚡

The following instructions are for Windows (powershell).

1. Install chocolatey

    ```powershell
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    ```

2. Install dependencies

    ```
    choco install neovim git python universal-ctags sumatrapdf miktex which strawberryperl
    ```

3. Configure python

    ```powershell
    py -m pip install pynvim flake8 black neovim-remote
    ```

4. Clone repo and open nvim-qt or nvim

    ```powershell
    Remove-Item $HOME\Appdata\Local\nvim; git clone https://github.com/Neelfrost/dotfiles.git $HOME\Appdata\Local\nvim
    ```

## LaTeX Specific

1. For formatting, install [latexindent](https://github.com/cmhughes/latexindent.pl) and ensure paths are correctly set.
2. To launch sumatrapdf using VimTeX (<kbd>\lv</kbd>), ensure sumatrapdf is added to paths.
3. For inverse search, open sumatrapdf then go to Settings -> Options and set inverse search command-line to:

    ```
    cmd /c for /F %i in ('type C:\Users\ADMINI~1\AppData\Local\Temp\curnvimserver.txt') do nvr --servername %i -c "normal! zzzv" +"%l" "%f"
    ```

---

# Update 🚀

1. Pull changes

    ```powershell
    cd $HOME\Appdata\Local\nvim; git pull
    ```

2. Open nvim-qt or nvim and update plugins:

    ```
    :PlugUpdate
    ```

---

# Features 📃

General

-   Persistent cursor positions when switching buffers.
-   Resume cursor position when re-opening a file.
-   Auto update file if changed outside of neovim.
-   Smart display line movement.
-   Ability to add custom directories to startify.
-   Automatically trim trailing whitespaces and newlines on save.
-   Open alacritty terminal, vscode, explorer at current directory using <kbd>\\\\t</kbd>, <kbd>\\\\c</kbd>, <kbd>\\\\e</kbd> respectively.

LaTeX

-   Extensive snippets for LaTeX.
-   Automatically substitute `\` in imports (include, input) with `/` on save.
-   Start newline with \item (or \task) if inside a list environment when pressing <kbd>Enter</kbd>, <kbd>o</kbd> or <kbd>O</kbd>.

<details>
<summary>Plugins Used</summary>

-   Buffer navigation: [barbar.nvim](https://github.com/romgrk/barbar.nvim)
-   Statusline: [lightline.vim](https://github.com/itchyny/lightline.vim)
-   Start screen: [vim-startify](https://github.com/mhinz/vim-startify)
-   File navigation: [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
-   Fuzzy file search: [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim)
-   Icons for NvimTree, Startify, bufferline/statusline: [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons), [vim-devicons](https://github.com/ryanoasis/vim-devicons)
-   Syntax highlighting: [vim-polyglot](https://github.com/sheerun/vim-polyglot)
-   Completion: [nvim-compe](https://github.com/hrsh7th/nvim-compe)
-   Language server client: [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
-   Cleaner lsp actions: [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
-   Python support: [pyright](https://github.com/microsoft/pyright)
-   Lua support: [sumneko_lua](https://github.com/sumneko/lua-language-server)
-   LaTeX support: [vimtex](https://github.com/lervag/vimtex)
-   Syntax checking and formatting: [ale](https://github.com/dense-analysis/ale)
-   Indent lines: [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
-   Auto pair brackets: [auto-pairs](https://github.com/jiangmiao/auto-pairs)
-   Colored matching brackets: [rainbow](https://github.com/luochen1990/rainbow)
-   Python formatter: [black](https://github.com/psf/black)
-   Run commands asynchronously: [asyncrun.vim](https://github.com/skywind3000/asyncrun.vim), [asyncrun.extra](https://github.com/skywind3000/asyncrun.extra)
-   Snippet engine: [ultisnips](https://github.com/SirVer/ultisnips)
-   Snippet collection: [vim-snippets](https://github.com/honza/vim-snippets) _(disabled by default)_
-   Commenting: [vim-commentary](https://github.com/tpope/vim-commentary)
-   Faster motion: [hop.nvim](https://github.com/phaazon/hop.nvim)
-   Tag management: [vim-gutentags](https://github.com/ludovicchabant/vim-gutentags)
-   Repeat actions: [vim-repeat](https://github.com/tpope/vim-repeat)
-   Bracket Operations: [vim-surround](https://github.com/tpope/vim-surround)
-   TitleCase: [vim-titlecase](https://github.com/christoomey/vim-titlecase)
-   Better quickfix: [nvim-bqf](https://github.com/kevinhwang91/nvim-bqf)
-   Aligning: [vim-easy-align](https://github.com/junegunn/vim-easy-align)
-   Spelling errors in quickfix list: [vim-SpellCheck](https://github.com/inkarkat/vim-SpellCheck), [vim-ingo-library](https://github.com/inkarkat/vim-ingo-library)

</details>

<!-- ## Keybinds -->

---

# Todo 🕒

-   [x] Automatic plugin install
-   [ ] Automatic install script
-   [x] Clear contrast between active and inactive tabs
-   [ ] Create video to showcase snippets, add snippet list
-   [ ] Add keybinds list
-   [ ] Add C# Support
-   [x] Add Lua Support
