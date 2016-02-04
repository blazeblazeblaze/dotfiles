" For vundle
:filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Bundle 'luochen1990/rainbow'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-leiningen'
Bundle 'tpope/vim-sexp-mappings-for-regular-people'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-repeat'
Bundle 'vim-ruby/vim-ruby'
Bundle 'groenewege/vim-less'
Bundle 'kien/ctrlp.vim'
Bundle 'othree/html5.vim'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'pangloss/vim-javascript'
Bundle 'junegunn/vim-easy-align'
Bundle 'guns/vim-sexp'
Bundle 'guns/vim-clojure-static'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'rking/ag.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'mxw/vim-jsx'
Bundle 'ntpeters/vim-better-whitespace'

" Must Haves
filetype plugin indent on

" Jsx settings
let g:jsx_ext_required = 0

" Tab settings

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Tab settings for less
augroup filetype_less
  au!
  au FileType less setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab
  au FileType less setlocal commentstring=//\ %s
augroup END

augroup filetype_sass
  au!
  au FileType sass setlocal iskeyword+=-
augroup END

" It's annoying to see the trail listchar while typing
" So only set list while in normal mode
augroup no_list_in_insert_mode
  au!
  au InsertEnter * set nolist
  au InsertLeave * set list
augroup END

" Make things better

" set scrolloff=3
" set wildmode=list:longest
set visualbell
set cursorline
set cursorcolumn
set ttyfast
set number
set mouse=a
set undofile

let mapleader = ","

" Sane Searching/Moving

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set showmatch

" Move selection up/down (add =gv to reindent after move)
vmap <D-S-Up> :m-2<CR>gv
vmap <D-S-Down> :m'>+<CR>gv

" Handle long lines

set nowrap
set textwidth=80
set colorcolumn=+1
" set formatoptions=qrn1

" Invisible Chars
set list

" Nabbed from Tim Pope's vim-sensible plugin
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+

if &termencoding ==# 'utf-8' || &encoding ==# 'utf-8'
  let &listchars = "tab:\u21e5 ,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u26ad"
  let &fillchars = "vert:\u259a,fold:\u00b7"
endif

" No more help key

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" save on losing focus
" au FocusLost * :wa

" Strip all trailing white space
let strip_whitespace_on_save = 1

" HTML fold tag function
nnoremap <leader>ft Vatzf

" Sort CSS properties
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>

" rehardwrap paragraphs of text
nnoremap <leader>q gqip

" reselect pasted text
nnoremap <leader>v V`]

" source vimrc file after changes
nnoremap <leader>sv :so $MYVIMRC<cr>

map <C-n> :NERDTreeToggle<CR>

" Split windows
" new vertical split
nnoremap <leader>w <C-w>v<C-w>l

" nnoremap <Leader>t :NERDTreeToggle<Enter>

nnoremap <leader><space> :noh<cr>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Resize splits when the window is resized
au VimResized * :wincmd =

syntax enable
set background=dark
colorscheme solarized

" No backup
set nobackup
set nowritebackup

" Always show the status line
set laststatus=2

let g:rainbow_active = 1

let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1

let g:syntastic_mode_map = { 'mode': 'active',
      \ 'active_filetypes': ['clojure', 'ruby', 'eruby', 'php', 'css', 'less', 'cucumber', 'javascript'],
      \ 'passive_filetypes': ['puppet'] }

" When switching the buffer using :sb use the tab if it's open
" set switchbuf=usetab

let g:ctrlp_extensions = ['tag']

" A simple way to speed up Vim Ctrl-P plugin
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'

" Fix error when opening vim with latest nerdtree
let NERDTreeHijackNetrw = 0

" Don't try to highlight lines longer than 800 characters.
set synmaxcol=800

highlight SpellBad term=underline gui=undercurl guisp=Orange
set spelllang=en_gb
set clipboard=unnamed
