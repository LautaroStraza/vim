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
       dialog --backtitle "Instalación vimrc de Straza" --title "Copia de seguridad" --yesno "El archivo .vimrc ya existe, ¿Desea hacer una copia de seguridad?" 7 70
       RESPUESTA=$?

       if [ $RESPUESTA = 0 ]
       then
            echo "Creando copia de seguridad."
            cp /home/$USUARIO/.vimrc /home/$USUARIO/.vimrc.backup
        fi
    else
        echo "No es necesario hacer copia de seguridad."
    fi

    #Guardo dotfiles
    cp /home/$USUARIO/vimrc/vimrc /home/$USUARIO/.vimrc
    #Cambio propietario
    chown $USUARIO:$USUARIO /home/$USUARIO/.vimrc
    #Cambio propiedades
    chmod 666 /home/$USUARIO/.vimrc

    #Script remap
    chmod +x /home/$USUARIO/vimrc/remap.sh
    /home/$USUARIO/vimrc/remap.sh

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

    #Saludos
    dialog --backtitle "Instalación vimrc de Straza" --ok-label "Salir" --title "Saludos" --msgbox "La instalación finalizó corectamente, Dews!" 7 47
    clear

else
    if [ ! $VIM ];then
        echo "Dependencias Incorrectas."
        echo "Falta instalar Vim."
    fi
    if [ ! $GIT ];then
        echo "Dependencias Incorrectas."
        echo "Falta instalar Git."
    fi
fi

#Salir
exit
