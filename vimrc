"-----------------"
" Vimrc de Straza "
"-----------------"

"    _____  __
"   / ___/ / /_ _____ ____ _ ____  ____ _
"   \__ \ / __// ___// __ `//_  / / __ `/
"  ___/ // /_ / /   / /_/ /  / /_/ /_/ /
" /____/ \__//_/    \__,_/  /___/\__,_/
"

"-------------"
" Basic setup "
"-------------"

"Disable beeping.
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

syntax on           " Habilitar: syntax highlighting.
set number          " Habilitar: número de renglon.
set relativenumber  " Habilitar: números relativos de renglones.
set hlsearch        " Habilitar: resaltar palabras buscadas.
set tabstop=4      	" Determina: cantidad de espacios de un caracter Tab.
set softtabstop=4
set shiftwidth=4  	" Determina: cantidad de espacios de una identación.
set expandtab       " Convierte los caracteres Tabs en espacios.
set smarttab        " Asigna shiftwidth o tabstop cuando corresponda.
set autoindent      " Habilita: la nueva linea mantiene el identado anterior.
set showmatch       " Show matching brackets.
set matchtime=5	    " Bracket blinking.
set history=50      " Habilita: historial de comandos.
set ruler           " Show the cursor position all the time.
set laststatus=2    " Always display the status line.
set hidden          " Configuración para poder ocultar buffers.
set wildmode=longest,list,full "Habilita el autocompletado de archivos.

"------------"
" Re-mapping "
"------------"

" Cambio leader key de \ a <espacio>.
let mapleader =" "

" Copiar y pegar a xclipboard
vnoremap <C-c> "*y :let @+=@*<CR>
vnoremap <C-x> "*d :let @+=@*<CR>
map <C-v> "+P

" Selección visual dentro de parentesis o corchetes.
noremap % v%

" Deshabilita las flechas dentro de <insert mode>.
inoremap <Up>	    <Nop>
inoremap <Down>     <Nop>
inoremap <Left>     <Nop>
inoremap <Right>    <Nop>

" Remapeo para buffers.
map <leader>n :bnext<CR>
map <leader>p :bprev<CR>
map <leader>d :bdelete<CR>
map <leader>w :w<CR>
map <leader>q :q<CR>

" Remapeo para plugins.
map <leader>t :NERDTreeToggle<CR>
map <leader>g :Goyo<CR>
map <leader>h <Esc>:call ToggleHardMode()<CR>

" Remueve espacios en blanco extras
" al final de cada linea al guardar
"                     el documento.
autocmd BufWritePre * %s/\s\+$//e

"---------------"
" Vundle Config "
"---------------"
set nocompatible              " be iMproved, required
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

"-------------------------"
" Agregar aca los Plugins "
"-------------------------"
Plugin 'PotatoesMaster/i3-vim-syntax'
Plugin 'ervandew/supertab'
Plugin 'junegunn/goyo.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'
Plugin 'vimwiki/vimwiki'
Plugin 'agude/vim-eldar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'wikitopian/hardmode'

"---------------------------------"
" Finalizar la entrada de plugins "
"---------------------------------"
call vundle#end()            " required
filetype plugin indent on    " required

"--------------------------------"
" Configuraciones de los plugins "
"--------------------------------"
"Colorscheme
if has('syntax')
    syntax enable             " Turn on syntax highlighting
    silent! colorscheme eldar
endif
"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dark_minimal'
"Vimwiki
filetype plugin on

" Dews!
