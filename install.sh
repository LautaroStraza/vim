#!/bin/sh

#Variables
USUARIO=$(whoami)
echo "El usuario es $USUARIO"

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
#Cambio propietario
chmod 666 /home/$USUARIO/.vimrc

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

#Salir
exit
