set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" SnipMate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
""Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" System tools
Plugin 'kien/ctrlp.vim'
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Programming helpers
Plugin 'csexton/trailertrash.vim'
Plugin 'tpope/vim-surround'
Plugin 'adinapoli/vim-markmultiple'
Plugin 'tomtom/tcomment_vim'
""Plugin 'vim-scripts/closetag.vim'
""Plugin 'spf13/vim-autoclose'
""Plugin 'AndrewRadev/linediff.vim'
"""Plugin 'rstacruz/sparkup'
""Plugin 'chrismetcalf/vim-yankring'
""Plugin 'ervandew/supertab'
""Plugin 'godlygeek/tabular'

" UI
Plugin 'bling/vim-airline'
let g:airline_powerline_fonts=1                     " Powerline in macvim.

""Plugin 'bling/vim-bufferline'

" Navigation
""Plugin 'git://git.wincent.com/command-t.git'
""Plugin 'majutsushi/tagbar'
""Plugin 'bogado/file-line'

" Language support
""Plugin 'spf13/PIV'
""Plugin 'vim-scripts/DoxygenToolkit.vim'
""Plugin 'vim-ruby/vim-ruby'
""Plugin 'beyondwords/vim-twig'
""Plugin 'moll/vim-node'
""Plugin 'kchmck/vim-coffee-script'
""Plugin 'ap/vim-css-color'
""Plugin 'cakebaker/scss-syntax.vim'
""Plugin 'scrooloose/syntastic'
""Plugin 'tpope/vim-markdown'
""Plugin 'tpope/vim-cucumber'

" Drupal
""Plugin 'git://drupalcode.org/project/vimrc.git', {'rtp': 'bundle/vim-plugin-for-drupal'}
""Plugin 'tanarurkerem/drupal-snippets'

" Services
""Plugin 'mattn/webapi-vim'
""Plugin 'mattn/gist-vim'
""Plugin 'tpope/vim-fugitive'

" Colorschemes
Plugin 'Lokaltog/vim-distinguished'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'

" All of your Plugins must be added before the following line
call vundle#end()               " required
filetype plugin indent on       " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" General organisation of your .vimrc see http://dougblack.io/words/a-good-vimrc.html
" Colors
" Spaces And Tabs
" UI Config
" Searching
" Folding
" Custom Movements
" Custom Leader
" CtrlP Settings
" Launch Config
" Tmux Config
" Autogroups
" Backups
" Custom Functions
" Organization
" Wrapping It Up

" Syntax highlighting options
set t_Co=256                                " 256 colors.
syntax on                                   " Enable syntax highlighting.
set background=dark                         " Use a dark background with light text.
set nocursorline                            " Don't highlight the screen line of the cursor.
set nocursorcolumn                          " Don't highlight the column of the cursor.
autocmd BufEnter * :syntax sync fromstart   " Set syntax sync to fromstart.

" Colour scheme
"silent! colorscheme solarized               " Use the Solarized color scheme.
"silent! colorscheme distinguished           " Use the Distinguished color scheme.
silent! colorscheme molokai                 " Use the Molokai color scheme.


" Files
set encoding=utf-8        " Always edit in utf-8.
set fileformats=unix      " Use Unix-style line endings.
set noswapfile            " Don't create swp files.

" Complete longest string, then list alternatives
set wildmode=longest,list

" Search
set ignorecase            " Ignore case when using a search pattern.
set smartcase             " Override 'ignorecase' when the pattern contains upper case characters.
set hlsearch              " Highlight all matches for the last used search pattern.
set incsearch             " Find matches as you type the search pattern.

" UI Information
set showcmd                                     " Show (partial) command keys in the status line.
set ruler                                       " Show cursor position (line and column number).
set number                                      " Show the line number for each line.
set showmatch                                   " Show matching brackets/parentheses.
set cursorline                                  " Show a dark bg on current line.
"nmap <leader>l :set list!<CR>                   " Toggle 'set list'.
set list                                        " Set tabs and eol characters.
set listchars=tab:▸\ ,eol:¬                     " Set tabs and eol characters.
"highlight NonText guifg=#4a4a59                " Colour special characters.
"highlight SpecialKey guifg=#4a4a59             " Colour special characters.

" UI Behaviour
set backspace=2                 " Use standard backspace behavior.
set scrolloff=2                 " Always show N lines above and below cursor (context).
set linebreak                   " Break lines when appropriate.
set clipboard=unnamed           " Always use the system keyboard.
set pastetoggle=<F2>            " Set key command to use as the paste mode toggle.
set history=1000                " Number of commands to remember.
set backspace=indent,eol,start  " Backspace.
set laststatus=2                " Always show status.
set scrolloff=15                " Always show n lines around the cursor.
set lazyredraw                  " redraw only when we need to.

" Tabs and Indentation
set expandtab             " Convert tabs to spaces.
set tabstop=2             " Tab size of 2 spaces.
set softtabstop=2         " Soft tab size of 2 spaces.
set shiftwidth=2          " Indentation tab of 2 spaces.
set autoindent
set copyindent
"set smartindent

" Avoid common mistakes
cnoreabbrev W w
cnoreabbrev Wq wq
cnoreabbrev Q q
cnoreabbrev WQ wq

" Change the command prefix to avoid pressing shift too much.
noremap ; :

" Let 'jj' escape out of INSERT mode.
inoremap jj <Esc>

" Change the leader
let mapleader=","
"nnoremap <Space> <nop>
"let mapleader = "\<Space>"


" Easier split navigation.
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Shortcut to clear search highlights.
nmap <silent> <leader><space> :nohlsearch<CR>

" Create a shortcut for saving a file with root permissions.
cmap w!! w !sudo tee % >/dev/null

" Make search results appear in the middle of the screen.
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" Persistent undo (vim 7.3 and later)
silent !mkdir ~/.vim/.undo > /dev/null 2>&1
if exists('&undofile') && !&undofile
  set undodir=~/.vim/.undo
  set undofile
endif

" Edit your .vimrc file
" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Set powerline fonts for macvim
if has("gui_running")
  let s:uname = system("uname")
    if s:uname == "Darwin\n"
      set guifont=Inconsolata\ for\ Powerline:h15
    endif
endif

" Custom mappings
nmap <S-Enter> O<Esc>   " Enter a new line without entering insert mode.

" move cursor in Insert Mode
inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l
