#!/bin/bash

#    _____  __
#   / ___/ / /_ _____ ____ _ ____  ____ _
#   \__ \ / __// ___// __ `//_  / / __ `/
#  ___/ // /_ / /   / /_/ /  / /_/ /_/ /
# /____/ \__//_/    \__,_/  /___/\__,_/
#

#Controlo que no exista el programa
if [ ! -e /usr/local/bin/remap ]
then
    sudo cp ~/vimrc/remap.sh /usr/local/bin/remap
    echo "Remap instalado en /usr/local/bin/remap."
    echo "Para ejecutar:"
    echo "              $ remap"
else
    echo "Remap ya se encuentra instalado en /usr/local/bin/remap."
    echo "Para ejecutar:"
    echo "              $ remap"
fi

#Saludo
echo
echo "Dews!"

#Salir
exit
