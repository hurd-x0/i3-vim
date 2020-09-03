""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Multiple commands
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }

" Loaded when clojure file is opened
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Multiple file types
Plug 'kovisoft/paredit', { 'for': ['clojure', 'scheme'] }

" On-demand loading on both conditions
Plug 'junegunn/vader.vim',  { 'on': 'Vader', 'for': 'vader' }

" Code to execute when the plugin is lazily loaded on demand
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }

autocmd! User goyo.vim echom 'Goyo is now loaded!'

Plug 'preservim/NERDTree'

Plug 'tpope/vim-sensible'

"Plug 'junegunn/seoul256'

Plug 'junegunn/vim-easy-align'

Plug 'Shougo/vimproc.vim', { 'do': 'make' }

Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }

Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

Plug 'itchyny/lightline.vim'

Plug 'NLKNguyen/papercolor-theme'

Plug 'shirk/vim-gas'

Plug 'vim-python/python-syntax'

Plug 'raichoo/haskell-vim' 

Plug 'pangloss/vim-javascript'

Plug 'NLKNguyen/c-syntax.vim'

Plug 'fatih/vim-go'

Plug 'elzr/vim-json'

Plug 'vim-scripts/mips.vim'

Plug 'pboettch/vim-cmake-syntax'

"Plug ' '

" Initialize plugin system
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" :W sudo saves the file when the file is open in readonly mode
command W w !sudo tee % > /dev/null

""""""""""""""""""""""""""""""""""""
" Line
""""""""""""""""""""""""""""""""""""
" show line numbers
set number

"""""""""""""""""""""""""""""""""""""
" Indents
"""""""""""""""""""""""""""""""""""""
" replace tabs with spaces
set expandtab
" 1 tab = 2 spaces
set tabstop=2 shiftwidth=2

" when deleting whitespace at the beginning of a line, delete 
" 1 tab worth of spaces (for us this is 2 spaces)
set smarttab

" when creating a new line, copy the indentation from the line above
set autoindent

"""""""""""""""""""""""""""""""""""""
" Search
"""""""""""""""""""""""""""""""""""""
" Ignore case when searching
set ignorecase
set smartcase

" highlight search results (after pressing Enter)
set hlsearch

" highlight all pattern matches WHILE typing the pattern
set incsearch

"""""""""""""""""""""""""""""""""""""
" Mix
"""""""""""""""""""""""""""""""""""""
" show the mathing brackets
set showmatch

" highlight current line
set cursorline

"let g:lightline = {
"      \ 'colorscheme': 'wombat',
"      \ }
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" papercolor-theme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme PaperColor

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" haskell-vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" python-syntax
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Option variables

"Set variable to 1 to enable or 0 to disable
let g:python_highlight_all = 1




