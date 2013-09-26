set nocompatible " Must come first because it changes other options.

silent! call pathogen#runtime_append_all_bundles()
silent! call pathogen#helptags()

" change the mapleader from \ to ,
let mapleader = ","
set history=1000

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

"set cursorline " hilight current line
set laststatus=2 " always show the last status line
set list " show hidden

" which hidden
"scriptencoding utf-8
set listchars=trail:.,tab:»·,eol:$ 

set ignorecase
set smartcase

"set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_stl_format = '[Syntax: line:%F (%t)]'
"set statusline+=%{SyntasticStatuslineFlag()}
set fillchars+=stl:\ ,stlnc:\

set t_Co=256
set term=screen-256color-bce
let g:solarized_termcolors=256
let g:solarized_termcolors=1
set background=light
colorscheme solarized

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
set pastetoggle=<F3>
nmap <F8> :TagbarToggle<CR>
if (match(system("uname -s"), "Darwin") != -1)
  let g:tagbar_ctags_bin='/opt/hb/bin/ctags'
end

:imap jj <Esc>
nnoremap ; :
cmap w!! w !sudo tee % >/dev/null

cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%


let g:airline_enable_branch=1
let g:airline_enable_syntastic=1
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_theme='solarized'

let g:gist_post_private = 1
let g:gist_show_privates = 1
let g:gist_detect_filetype = 1

if has('autocmd')
  if has('spell')
    au BufNewFile,BufRead COMMIT_EDITMSG setlocal spell
  endif
  au BufNewFile,BufRead COMMIT_EDITMSG call feedkeys('ggi','t')
endif

let g:GPGPreferArmor=1
let g:GPGDefaultRecipients=["Stuart-Glenn@omrf.org"]
let g:GPGUseAgent=0
let g:GPGUsePipes=1
