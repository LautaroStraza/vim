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
DIALOG=$(which dialog)

#Directorio donde se clono el repositorio
DIRECTORIO=$(pwd)

if [ $VIM ] && [ $GIT ] && [ $DIALOG ]
    then
    echo "Dependencias correctas."

    #Backup de la configuración vieja
    if [ -e ${HOME}/.vimrc ]
    then
       dialog --backtitle "Instalación vimrc de Straza" --title "Copia de seguridad" --yesno "El archivo .vimrc ya existe, ¿Desea hacer una copia de seguridad?" 7 70
       RESPUESTA=$?

       if [ $RESPUESTA = 0 ]
       then
            echo "Creando copia de seguridad."
            cp ${HOME}/.vimrc ${HOME}/.vimrc.backup
       fi
    fi

    #Guardo dotfiles
    cp "${DIRECTORIO}/vimrc" ${HOME}/.vimrc
    #Cambio propietario
    chown ${USER}:${USER} ${HOME}/.vimrc
    #Cambio propiedades
    chmod 644 ${HOME}/.vimrc

    #Ejecutar scritp remap
    chmod +x "${DIRECTORIO}/remap.sh"
    ${DIRECTORIO}/remap.sh

    #Instalar scritp remap
    dialog --backtitle "Instalación remap de Straza" --title "Instalar remap" --yesno "¿Desea instalar remap?" 7 70
    RESPUESTA=$?
    if [ $RESPUESTA = 0 ]
    then
        if [ ! -e /usr/local/bin/remap ]
        then
            sudo cp "${DIRECTORIO}/remap.sh" /usr/local/bin/remap
            echo "Remap instalado en /usr/local/bin/remap."
            echo "Para ejecutar:"
            echo "              $ remap"
        else
            echo "Remap ya se encuentra instalado en /usr/local/bin/remap."
            echo "Para ejecutar:"
            echo "              $ remap"
        fi
    fi

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

    #Instalar las configuraciones segun filetype
    cp -r "${DIRECTORIO}/ftplugin" ${HOME}/.vim

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
    if [ ! $DIALOG ];then
        echo "Dependencias Incorrectas."
        echo "Falta instalar Dialog."
    fi
fi

#Salir
exit
