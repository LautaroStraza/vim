#!/bin/bash

#    _____  __
#   / ___/ / /_ _____ ____ _ ____  ____ _
#   \__ \ / __// ___// __ `//_  / / __ `/
#  ___/ // /_ / /   / /_/ /  / /_/ /_/ /
# /____/ \__//_/    \__,_/  /___/\__,_/
#

#Controlo dependencias
VIM=$(which vim)
GIT=$(which git)

if [ $VIM ] && [ $GIT ] ; then
    echo "Dependencias correctas."

    #Variables
    USUARIO=$(whoami)
    echo "Nombre de usuario: $USUARIO."

    #Backup de la configuración vieja
    if [ -e /home/$USUARIO/.vimrc ]
    then
        echo "Creando copia de seguridad."
        cp /home/$USUARIO/.vimrc /home/$USUARIO/.vimrc.backup
    else
        echo "No es necesario hacer copia de seguridad."
    fi

    #Guardo dotfiles
    cp vimrc /home/$USUARIO/.vimrc
    #Cambio propiedades
    chmod 666 /home/$USUARIO/.vimrc
    #Cambio propietario
    chown $USUARIO:$USUARIO /home/$USUARIO/.vimrc

    #Script remap
    chmod +x remap.sh
    ./remap.sh

    #Configurar vim plugins
    if [ -e ~/.vim/bundle/Vundle.vim ]; then
        echo "VundleVim ya instalado, instalando plugins..."
        vim +PluginInstall +qall
    else
        echo "Instalando VundleVim..."
        git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
        echo "Instalando plugins..."
        vim +PluginInstall +qall
    fi
else
    if [ ! $VIM ];then
        echo "Falta instalar Vim."
    fi
    if [ ! $GIT ];then
        echo "Falta instalar Git."
    fi
fi

#Salir
exit
