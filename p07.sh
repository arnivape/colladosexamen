#!/bin/bash
clear
#######COMPROVANT SI L'ARXIU DE GUIÓ L'EXECUTA L'USUARI ROOT###################
if (( EUID != 0 ))
then
  echo "Aquest script s'ha d'executar amb prilegis de l'usuari root"
  exit 9 # He posat aquest número per assegurar-me que no coincideix amb cap al$
fi
#
clear
echo "Nom de la carpeta que crearem"
read carpeta
if[ carpeta = -d /var/ ];
then echo "la carpeta ja existeix"
else
echo mkdir carpeta
fi
cp /etc/ssh/sshd_config carpeta
cp /etc/cups/cupsd-conf carpeta
zenity --entry --text "fitxers copiats" 
zenity --question --text "Vol continuar?"
read resposta
if[resposta = 'y']
then 

exit 5


