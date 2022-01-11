filetype plugin indent on
syntax on

set number
set encoding=utf-8
set wildmode=full

set autoindent
set smartindent

set textwidth=110
set scrolloff=8
set laststatus=2

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartcase


set showtabline=2
set noshowmode
" set showmatch
set showcmd
set modeline
set mouse=a

"default *global* string substitution :s/foo/bar/
set gdefault

set magic

" set key to <SPACE>!
" let mapleader="\<space>"
let mapleader="§"

" --------------------------------------------------------------------------- "
command!                            UndoCloseTab    call utils#undoCloseTab()
command!                            CloseTab        call utils#closeTab()
command! -nargs=1 -complete=color   ColorScheme     :colorscheme <args>
" --------------------------------------------------------------------------- "
nnoremap <silent>   <F12>               :edit ~/.config/nvim/init.vim<CR>
nnoremap <silent>   <leader><BS>        :noh<CR>

nnoremap <silent>   <leader>tn          :tabnew<CR> 
nnoremap <silent>   <leader>t<Left>     :tabprevious<CR>   
nnoremap <silent>   <leader>t<Right>    :tabnext<CR>       
nnoremap <silent>   <leader>t<Down>     :tabclose<CR>      

nnoremap <silent>   <leader><esc>       :close<CR>         
nnoremap            <leader>c           :ColorScheme<space>
nnoremap <silent>   <leader><space>     :NERDTreeToggle<CR>
nnoremap <silent>   <leader>r           :redo<CR>          
" -----------------------------------------------------------------------------
call plug#begin('~/.config/nvim-plugged')
    " colorschemes
"    Plug 'junegunn/seoul256.vim'
    "Plug 'bitterjug/vim-colors-bitterjug'
    "Plug 'jonathanfilip/vim-lucius'
"    Plug 'mhartington/oceanic-next'
    Plug 'ajh17/spacegray.vim'
    "Plug 'tomasr/molokai'
    "Plug 'axvr/org.vim'

    " Code completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'},
    Plug 'neoclide/coc-yaml',
    Plug 'neoclide/coc-highlight',
    Plug 'neoclide/coc-json',
    Plug 'ekalinin/dockerfile.vim'

    " bars
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " UI
    Plug 'scrooloose/nerdtree'
    Plug 'tpope/vim-sensible'
    Plug 'ryanoasis/vim-devicons'
  " Plug 'chase/vim-ansible-yaml'
call plug#end()

colorscheme spacegray

" Plugin mappings
inoremap <silent><expr> <c-space> coc#refresh()

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction


" let g:rehash256 = 0
" let g:molokai_original = 1
" ^ options for molokai theme

let NERDTreeShowHidden=1
let NERDTreeWinPos="left"
let NERDTreeMinimalUI=0
let NERDTreeChDirMode=2

" vim-airline layout
" +---------------------------------------------------------------------------+
" | A | B |                     C                          X | Y | Z |  [...] |
" +---------------------------------------------------------------------------#

let g:airline#extensions#undotree#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#keymap_ignored_filetypes = ['nerdtree']

" let g:airline_section_b = ''
" let g:airline_section_c = '%t nerd_tree'
" let g:airline_section_x = ''


" Nice vim-airline themes
" fairyfloss, papercolor, monokai, cool
let g:airline_theme = "papercolor"
let g:airline_powerline_fonts = "1"
