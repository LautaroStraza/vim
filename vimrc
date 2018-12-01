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
set hlsearch		" Habilitar: resaltar palabras buscadas.
set tabstop=4	   	" Determina: cantidad de espacios de un caracter Tab.
set softtabstop=4
set shiftwidth=4  	" Determina: cantidad de espacios de una identación.
set expandtab	    " Convierte los caracteres Tabs en espacios.
set smarttab	    " Asigna shiftwidth o tabstop cuando corresponda.
set autoindent		" Habilita: la nueva linea mantiene el identado anterior.
set showmatch	    " Show matching brackets.
set matchtime=5	 	" Bracket blinking.
set history=50      " Habilita: historial de comandos.
set ruler           " Show the cursor position all the time.
set laststatus=2    " Always display the status line.

"set t_Co=256        " Enable colors for airline.
"set ttimeoutlen=10  " Refresh time for airline.

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
"nnoremap <Up>       :w<CR>
"nnoremap <Down>     :bd<CR>
"nnoremap <Left>     :bp<CR>
"nnoremap <Right>    :bn<CR>

" Identa todo el documento, sin sangrias.
"map <F7> mzgg=G`z

"map <C-n> :NERDTreeToggle<CR>
"map <C-c> :LLPStartPreview<CR>

"---------------"
" Vundle Config "
"---------------"

"set nocompatible              " be iMproved, required
"filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

"-------------------------"
" Agregar aca los Plugins "
"-------------------------"
"Plugin 'ervandew/supertab'
"Plugin 'scrooloose/nerdtree'
"Plugin 'vim-syntastic/syntastic'
"Plugin 'xuhdev/vim-latex-live-preview'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'

"---------------------------------"
" Finalizar la entrada de plugins "
"---------------------------------"

" All of your Plugins must be added before the following line
"call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Configs de los plugins
"let g:livepreview_previewer = 'evince'
" Para que airline muestre los simbolos
"let g:airline_powerline_fonts = 1
" Tema para airline
"let g:airline_theme='luna'
" Enable the list of buffers
"let g:airline#extensions#tabline#enabled = 1
" Show just the filename
"let g:airline#extensions#tabline#fnamemod = ':t'

" Configs para trabajar comodo con tabs
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
"set hidden

"Dews!
