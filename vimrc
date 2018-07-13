"let g:perl_fold=1
"let g:sh_fold_enabled=3

syntax on

set nocompatible
"set foldenable
"set foldmethod=syntax
"set foldlevelstart=0
set cc=60
set mouse=n
set ruler
set number
set background=dark
set laststatus=2
set tabstop=2
set shiftwidth=2
set expandtab
set cursorline
set textwidth=72
set wrapmargin=5
set termguicolors

let mapleader = ","

let g:ctrlp_map = '<Leader>f'

:nnoremap <Tab> :tabnext<CR>
:nnoremap <S-Tab> :tabprevious<CR>

execute pathogen#infect()

filetype plugin indent on

" Configure gruvbox colorscheme
let g:gruvbox_contrast_dark  = 'hard'
let g:gruvbox_contrast_light = 'soft'

set t_Co=256
colorscheme gruvbox

" Configure airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Enable deoplete
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#disable_auto_complete = 1
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

