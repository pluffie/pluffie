""" PLUGINS

call plug#begin('~/.vim/plugged')
  Plug 'morhetz/gruvbox' " Theme

  Plug 'vim-airline/vim-airline'        " Airline
  Plug 'neoclide/coc.nvim'              " Coc

  Plug 'aperezdc/vim-template'          " Template
  Plug 'scrooloose/nerdtree'          " Project and file navigation
  Plug 'majutsushi/tagbar'            " Class/module browser
  
  Plug 'fisadev/FixedTaskList.vim'      " Pending tasks list
  Plug 'rosenfeld/conque-term'          " Consoles as buffers
  Plug 'tpope/vim-surround'     " Parentheses, brackets, quotes, XML tags, and more"
call plug#end()

""" BASIC SETTINGS
set mouse=a
language eng
filetype plugin indent on "Включает определение типа файла, загрузку...
"... соответствующих ему плагинов и файлов отступов
set encoding=utf-8 "Ставит кодировку UTF-8
set nocompatible "Отключает обратную совместимость с Vi
syntax enable "Включает подсветку синтаксиса

set listchars=eol:~
set listchars+=space:•
set list

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent

set showtabline=0 "Отключаем панель табов (окошки FTW)
set number
set nowrap
set cursorline "А так мы можем подсвечивать строку с курсором
set keymap=russian-jcukenmac
"Язык ввода при старте Вима - Английский
set iminsert=0
"Аналогично настраивается режим поиска
set imsearch=0

if has('termguicolors')
  set termguicolors
endif
" The configuration options should be placed before `colorscheme edge`.
colorscheme gruvbox

""" MAPPINGS
" Coc
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" Save
inoremap <silent><C-s> <esc>:w<cr>i

""" AIRLINE
" let g:airline#extensions#coc#enabled = 1
" let g:airline#extensions#hunks#enabled = 1

let g:airline#extensions#hunks#non_zero_only = 0

let g:airline_section_z = "Line:%l/%L Col:%c" "Кастомная графа положения курсора

let g:airline_left_sep = ''
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ''
let g:airline_right_alt_sep = '|'

let g:airline#extensions#default#layout = [
    \ [ 'error', 'warning', 'a', 'b', 'c' ],
    \ [ 'x', 'y', 'z' ]
    \ ]

""" TEMPLATES
let g:templates_directory = '~/.config/nvim/templates'

