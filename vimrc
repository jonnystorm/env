syntax on

set mouse=n
set background=dark
set ruler
set laststatus=2
set number
set tabstop=2
set shiftwidth=2
set expandtab
set cursorline
set textwidth=72
set wrapmargin=5

let mapleader = ","

let g:ctrlp_map = '<Leader>f'

:nnoremap <Tab> :tabnext<CR>
:nnoremap <S-Tab> :tabprevious<CR>

"execute pathogen#infect()

filetype plugin indent on

" Configure gruvbox colorscheme
let g:gruvbox_contrast_dark = 'hard'

set t_Co=256
"colorscheme gruvbox

" Configure airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Enable deoplete
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#disable_auto_complete = 1
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

