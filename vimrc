"-----------------"
" Vimrc de Straza "
"-----------------"

"-------------"
" Basic setup "
"-------------"

"Disable beeping
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

"------------"
" Re-mapping "
"------------"

" Selección visual dentro de parentesis o corchetes.
noremap % v%

" Deshabilita moverse con las flechas dentro de <insert mode>.
inoremap <Up>	    <Nop>
inoremap <Down>     <Nop>
inoremap <Left>     <Nop>
inoremap <Right>    <Nop>

" Remapeo para moverse entre buffers con las flechas.
nnoremap <Up>       :w<CR>
nnoremap <Down>     :bd<CR>
nnoremap <Left>     :bp<CR>
nnoremap <Right>    :bn<CR>

" Remapeo de plugins.
map <C-n> :NERDTreeToggle<CR>
map <leader>n :bnext<CR>
map <leader>p :bprev<CR>
"map <C-c> :LLPStartPreview<CR>

"---------------"
" Vundle Config "
"---------------"

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"-------------------------"
" Agregar aca los Plugins "
"-------------------------"
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdtree'
Plugin 'ap/vim-buftabline'
Plugin 'vim-syntastic/syntastic'
"Plugin 'xuhdev/vim-latex-live-preview'

"---------------------------------"
" Finalizar la entrada de plugins "
"---------------------------------"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Configs de los plugins
"let g:livepreview_previewer = 'evince'

" Configuración para trabajar con un buffer en cada tab.
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

"Dews!
