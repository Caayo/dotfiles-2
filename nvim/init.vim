"  _   _                 _            
" | \ | | ___  _____   _(_)_ __ ___   
" |  \| |/ _ \/ _ \ \ / / | '_ ` _ \  
" | |\  |  __/ (_) \ V /| | | | | | | 
" |_| \_|\___|\___/ \_/ |_|_| |_| |_| 
"                                     
" by Christopher Ayo (2023) 
" ----------------------------------------------------- 

" Define a custom command to run Python and display output on the right
command! -nargs=+ PyExecute rightbelow execute 'r!python' shellescape(<q-args>)

nnoremap <SPACE>fs :w<CR>:echo ">> File has been saved."<CR>    " save file
nnoremap <SPACE>fq :wq<CR>                                      " save file and quit
nnoremap <SPACE>fx :wq<CR>                                      " save file and quit
nnoremap <SPACE>q :q<CR>                                        " quit
nnoremap <Space>so :source %<CR>:echo ">> File sourced successfully."<CR>
nnoremap <SPACE>pi :PlugInstall<CR>                             " install plugins
nnoremap <SPACE>pu :PlugUpdate<CR>                              " update plugins
nnoremap <SPACE>pc :PlugClean<CR>                               " remove plugins
nnoremap <SPACE>cp :w<CR>:rightbelow vnew<CR>:!python3 %<CR>    " compile python3
"nnoremap j gj                       " move up editor lines
"nnoremap k gk                       " move down editor lines

set nocompatible                    " disable compatibility to old-time vi
set showmatch                       " show matching 
set ignorecase                      " case insensitive 
set mouse=v                         " middle-click paste with 
set hlsearch                        " highlight search 
set incsearch                       " incremental search
set tabstop=4                       " number of columns occupied by a tab 
set softtabstop=4                   " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set relativenumber          " add relative line numbers
set wildmode=longest,list   " get bash-like tab completions
" set cc=80                   " set an 80 column border for good coding style
filetype off                " helps force plugins to load correctly when it is turned back on below
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard+=unnamedplus   " using system clipboard
filetype plugin on
" set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
set modelines=0             " security
set ruler                   " show file stats
set visualbell              " blink cursor on error instead of beeping
set wrap                    " 
set linebreak               " 
set hidden                  " 
set ttyfast                 " 
set laststatus=2            "
set showmode                " 
set showcmd                 " 


call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'


" [My Plugins]
Plug 'jdhao/better-escape.vim'
	" use jj to escape insert mode.
	let g:better_escape_shortcut = ['kj', 'jk']


" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
