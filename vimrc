" This must be first, because it changes other options as a side effect.
set nocompatible

set ls=2            " always show status line
set title           " show title in console title bar
syntax on           " syntax highlighing

if has("mouse")
    "set mouse=a
    set mouse+=a
    if &term =~ '^screen'
        " tmux knows the extended mouse mode
        set ttymouse=xterm2
    endif
endif

"set autoindent
"set textwidth=0

set tabstop=4
set shiftwidth=4
set expandtab " expand tabs to spaces
"set noexpandtab " use tabs

"" Directories for swp files
"set nobackup
"set noswapfile

"" set line number
set number

"set the full path in status line
"set statusline+=%F
set statusline=%<%F\ %h%m%r%y%=%-14.(%l,%c%V%)\ %P
"set ruler

" The following settings are nice to haves.
set backspace=2
set showcmd
"set backup
set history=1000
set viminfo='500,:1000,/1000,f1
set nowrap
set incsearch
set hlsearch "search highlighting
set viminfo^=h
set showmatch
set formatoptions=tcq

" automatically refresh unchanged files
"set autoread ":edit

set noeb vb t_vb=

set t_Co=256
set background=dark
"colo default
colo luna2

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
    syntax on
endif

"hi Search guibg=LightBlue
"hi Search ctermbg=Green ctermfg=Black
hi Search ctermbg=Green ctermfg=Black

"" filetype plugin for block commenting?, but pasting line with comments cause
"" subsequent lines to be commented out. disable
"filetype plugin on

" do not indent lines/blocks when pasting from copy with comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Expand current vertical or horizontal split pane
map <C-m> <C-w>\| <C-w>_
" Resize split panes to equal size
map <C-y> <C-w>=

" Toggle set number on/off
map <C-i> :setlocal number!<CR>

" clears the search buffer when you press ,/
nmap <silent> ,/ :nohlsearch<CR>

" NERDTree for tree structure and Taglist for file structure
"map <C-n> :NERDTreeToggle<CR>
map <C-n> :NERDTreeTabsToggle<CR>
map <C-]> :TlistToggle<CR>

"" nerdtree window size
let g:NERDTreeWinSize=21

"" taglist options
let Tlist_Use_SingleClick = 1
let Tlist_Use_Right_Window = 1
"let Tlist_Auto_Open = 1
let Tlist_Exit_OnlyWindow = 1
let TlistHighlightTag = 1


" file list
set wildmode=longest,list,full
set wildmenu


" vim:fdm=marker
 
" Editor basics {{{
" Behave like Vim instead of Vi
"set nocompatible
 
" Show a status line
"set laststatus=2
 
" Show the current cursor position
"set ruler
 
" Enable syntax highlighting
"syn on
" }}}

" Mouse {{{
" Send more characters for redraws
set ttyfast
 
" Enable mouse use in all modes
"set mouse=a
 
" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
"set ttymouse=xterm
" }}}


" Disable arrow keys {{{
"noremap  <Up>     <NOP>
"inoremap <Down>   <NOP>
"inoremap <Left>   <NOP>
"inoremap <Right>  <NOP>
"noremap  <Up>     <NOP>
"noremap  <Down>   <NOP>
"noremap  <Left>   <NOP>
"noremap  <Right>  <NOP>
" }}}


