" check whether vim-plug is installed and install it if necessary
let plugpath = expand('<sfile>:p:h'). '/autoload/plug.vim'
if !filereadable(plugpath)
    if executable('curl')
        let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        call system('curl -fLo ' . shellescape(plugpath) . ' --create-dirs ' . plugurl)
        if v:shell_error
            echom "Error downloading vim-plug. Please install it manually.\n"
            exit
        endif
    else
        echom "vim-plug not installed. Please install it manually or install curl.\n"
        exit
    endif
endif

call plug#begin('~/.config/nvim/plugged')

" Colors and UI
Plug 'morhetz/gruvbox'
Plug 'freeo/vim-kalisi'
Plug 'joshdick/onedark.vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Utility Plugins
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'ambv/black'
" Github added/deleted lines
Plug 'mhinz/vim-signify'
" Syntax highlighting
Plug 'digitaltoad/vim-pug'
" Autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" FuzzySearch
Plug 'junegunn/fzf'
" Detect code indents
Plug 'roryokane/detectindent'
" Language Specific
"A collection of language packs for Vim.
Plug 'sheerun/vim-polyglot'
" SaltStack
Plug 'saltstack/salt-vim'
" Rust
Plug 'rust-lang/rust.vim'
" Golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Jenkinsfile
Plug 'martinda/Jenkinsfile-vim-syntax'
" Dockerfile
Plug 'ekalinin/dockerfile.vim'
" Useful tools
Plug 'w0rp/ale'
"
call plug#end()
