# vimrc - Straza
Vimrc configuraciones para vim.

### Dependencias
    * Git
    * Dialog
    * Vim (Gvim o algún vim gráfico para poder usar el buffer +)

#### Necesario para plugins

### Instalación
Asegurarse de tener las depencencias instaladas, y desde la terminal:
```
    $ git clone https://github.com/lautarostraza/vimrc
    $ cd vimrc
    $ ./install.sh
    $ cd ..
    $ rm -r vimrc
```

### Remap
El script remap (cambia capsLock : escape) se ejecuta una vez al instalar vimrc.

Cada vez que reinicia la máquina virtual se pierte el remapeo de teclas,
    pero solo basta con llamarlo una vez (si se encuentra instalado):

```
    $ remap
```

### Usa los siguientes plugins:
```
    Plugin 'mboughaba/i3config.vim'
    Plugin 'ervandew/supertab'
    Plugin 'junegunn/goyo.vim'
    Plugin 'scrooloose/nerdtree'
    Plugin 'Xuyuanp/nerdtree-git-plugin'
    Plugin 'vim-syntastic/syntastic'
    Plugin 'vimwiki/vimwiki'
    Plugin 'agude/vim-eldar'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'wikitopian/hardmode'
    Plugin 'plasticboy/vim-markdown'
    Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}
    Plugin 'tpope/vim-fugitive'
    Plugin 'xuhdev/vim-latex-live-preview'
```

### Screenshoots:
![alt text](https://raw.githubusercontent.com/lautarostraza/vimrc/master/im%C3%A1genes/screenshoot-1.png)
![alt text](https://raw.githubusercontent.com/lautarostraza/vimrc/master/im%C3%A1genes/screenshoot-2.png)
![alt text](https://raw.githubusercontent.com/lautarostraza/vimrc/master/im%C3%A1genes/screenshoot-3.png)

Autor @lautarobarba
