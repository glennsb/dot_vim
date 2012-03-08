set nocompatible " Must come first because it changes other options.

silent! call pathogen#runtime_append_all_bundles()

syntax enable " syntax highlighting
filetype plugin indent on " file type detection

set showcmd " show incomplete commands
set showmode " show current mode


set backspace=indent,eol,start " better backspacing

set hidden " better multi buffer

set wildmenu " enhanced command line completion
set wildmode=list:longest " complete files more like shell

set number " show line numbers
set ruler " show cursor position

set nowrap " turn off line wrapping

set hlsearch " highligh matches
noremap <C-l> :nohlsearch<CR><C-l>
noremap! <C-l> <ESC>:nohlsearch<CR><C-l>
set incsearch " highclight matches as typed
set showmatch

set visualbell " no beeping sucker

set cursorline " hilight current line
set laststatus=2 " always show the last status line
set list " show hidden
set listchars=trail:.,tab:▸\ ,eol:$ " which hidden

set ignorecase
set smartcase

"set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
"let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_stl_format = '[Syntax: line:%F (%t)]'
set statusline+=%{SyntasticStatuslineFlag()}

colorscheme grb256

set expandtab
set softtabstop=2
set shiftwidth=2
set tabstop=2
set autoindent

set foldenable

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

set encoding=utf-8

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

map <F2> :NERDTreeToggle<cr>

:imap jj <Esc>
