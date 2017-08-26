" syntax highlighting
syntax on

" line numbers
set number

filetype plugin indent on

set tabstop=2 
set expandtab
set shiftwidth=2
set autoindent
set softtabstop=2

" folding settings
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

" map esc key to ii
imap ii <Esc>

" buffer to clipboard
set clipboard=unnamed

" ======== start: SILVER SEARCHER CONFIG ========
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

nnoremap \ :Ag<SPACE>
" ======== end: SILVER SEARCHER CONFIG ========

" ======== start: SPLIT CONFIG ========
" split window heights
set winheight=30
set winminheight=5

" open splits to the right and below
set splitbelow
set splitright

" remap for easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" remap for easier split resizing
nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>
" ======== end: SPLIT CONFIG ========

let g:netrw_liststyle=3

let mapleader=','

call plug#begin('~/.vim/plugged')
"NERDTree plugin
  Plug 'https://github.com/scrooloose/nerdtree.git'
    map <silent> <C-e> :NERDTreeToggle <CR>
    let NERDTreeQuitOnOpen=1

"git integration
  Plug 'https://github.com/tpope/vim-fugitive.git'
    nnoremap <silent> <leader>gs :Gstatus<CR>
    nnoremap <silent> <leader>gd :Gdiff<CR>
    nnoremap <silent> <leader>gc :Gcommit<CR>
    nnoremap <silent> <leader>gb :Gblame<CR>
    nnoremap <silent> <leader>gl :Glog<CR>
    nnoremap <silent> <leader>gp :Git push<CR>
    nnoremap <silent> <leader>gw :Gwrite<CR>
    nnoremap <silent> <leader>gg :GitGutterToggle<CR>

" git gutter
  Plug 'https://github.com/airblade/vim-gitgutter.git'

" ESLint
  Plug 'https://github.com/scrooloose/syntastic'
  " Eslint autodetection on OSX is muddy.. Try eslint_d.
    let g:syntastic_javascript_checkers = [ 'eslint_d', 'eslint' ]
    let g:syntastic_javascript_eslint_exec = 'eslint_d'

" TypeScript
  Plug 'https://github.com/leafgarland/typescript-vim.git'

  Plug 'Shougo/vimproc.vim', {'do' : 'make'}
call plug#end()

