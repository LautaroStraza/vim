"##############################"
"      _                       "
"  ___| |_ _ __ __ _ ______ _  "
" / __| __| '__/ _` |_  / _` | "
" \__ \ |_| | | (_| |/ / (_| | "
" |___/\__|_|  \__,_/___\__,_| "
"                              "
"------------------------------"
"     Configuración - Vim      "
"                              "
"##############################"

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
" Deshabilita las flechas dentro de <insert mode>.
nnoremap <Up>        <Nop>
nnoremap <Down>      <Nop>
nnoremap <Left>      <Nop>
nnoremap <Right>     <Nop>

" Remapeo para moverme entre ventanas.
map <C-k> <C-w>k
map <C-j> <C-w>j
map <C-h> <C-w>h
map <C-l> <C-w>l

" Cierre automático de llaves
"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
"inoremap < <><left>
"inoremap {<CR> {<CR>}<ESC>O
"inoremap {;<CR> {<CR>};<ESC>O}}

" Mostrar/Ocultar numero de lineas
"nnoremap <F3> :set nu! rnu!<CR>

"-------"
" Extra "
"-------"
" Remueve espacios en blanco extras
" al final de cada linea al guardar
"                     el documento.
autocmd BufWritePre * %s/\s\+$//e

"---------------"
" Vundle Config "
"---------------"
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

"-------------------------"
" Agregar aca los Plugins "
"-------------------------"
Plugin 'mboughaba/i3config.vim'
Plugin 'preservim/nerdcommenter'
Plugin 'posva/vim-vue'
"Plugin 'vim-syntastic/syntastic'
Plugin 'wikitopian/hardmode'
Plugin 'kien/ctrlp.vim'
Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'

"--------------------------------"
" Finaliza la entrada de plugins "
"--------------------------------"
call vundle#end()            " required
filetype plugin on           " required

"--------------------------------"
" Configuraciones de los plugins "
"--------------------------------"

"posva/vim-vue
let g:vue_disable_pre_processors=1

"kien/ctrlp.vim
let g:ctrlp_working_path_mode = 'a'

"preservim/nerdcommenter
map <C-c> <plug>NERDCommenterToggle

"preservim/nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Dews!
