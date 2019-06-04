#!/bin/bash
#Creado por: Santino
#Para: Error404
#Colores hehehe
export Azul='\033[1;94m'
export Verde='\033[1;92m'
export Rojo='\033[1;91m'
export RESETCOLOR='\033[1;00m'

echo -e "\n$Azul -----$Verde Iniciando Instalacion$Azul -----"$RESETCOLOR
echo
sleep 3
#apt-get update && apt-get upgrade -y
sleep 2
apt-get install macchanger
echo 
echo -e "\n$Azul -----$Verde Instalacion Completada$Azul -----"$RESETCOLOR
clear
echo
sleep 1 
echo -e "\n$Azul -----$Verde Iniciando Script$Azul -----"$RESETCOLOR
sleep 2
clear
echo
echo -e "$Rojo  ███▄ ▄███▓ ▄▄▄      ▄████▄       ██████  ██▓███  ▒█████   ▒█████    █████▒"
echo -e "$Rojo ▓██▒▀█▀ ██▒▒████▄   ▒██▀ ▀█     ▒██    ▒ ▓██░  ██▒██▒  ██▒▒██▒  ██▒▓██   ▒ "
echo -e "$Rojo ▓██    ▓██░▒██  ▀█▄ ▒▓█    ▄    ░ ▓██▄   ▓██░ ██▓▒██░  ██▒▒██░  ██▒▒████ ░ "
echo -e "$Rojo ▒██    ▒██ ░██▄▄▄▄██▒▓▓▄ ▄██▒     ▒   ██▒▒██▄█▓▒ ▒██   ██░▒██   ██░░▓█▒  ░ "
echo -e "$Rojo ▒██▒   ░██▒ ▓█   ▓██▒ ▓███▀ ░   ▒██████▒▒▒██▒ ░  ░ ████▓▒░░ ████▓▒░░▒█░    "
echo -e "$Rojo ░ ▒░   ░  ░ ▒▒   ▓▒█░ ░▒ ▒  ░   ▒ ▒▓▒ ▒ ░▒▓▒░ ░  ░ ▒░▒░▒░ ░ ▒░▒░▒░  ▒ ░    "
echo -e "$Rojo ░  ░      ░  ▒   ▒▒ ░ ░  ▒      ░ ░▒  ░ ░░▒ ░      ░ ▒ ▒░   ░ ▒ ▒░  ░      "
echo -e "$Rojo ░      ░     ░   ▒  ░           ░  ░  ░  ░░      ░ ░ ░ ▒  ░ ░ ░ ▒   ░ ░    "
echo -e "$Rojo        ░         ░  ░ ░               ░              ░ ░      ░ ░          "
echo -e "$Rojo                     ░                                                      "
echo -e "$Azul                                          ___                 _ _   __  _ _ "
echo -e "$Azul                                         | __|_ _ _ _ ___ _ _| | | /  \| | |" 
echo -e "$Azul                                         | _|| '_| '_/ _ \ '_|_  _| () |_  _|"
echo -e "$Azul                                         |___|_| |_| \___/_|   |_| \__/  |_|"$Verde
echo
sleep 1
read -p "Deseas Cambiar o Restaurar tu MAC Address?: " macchanger
if [ $macchanger == "cambiar" ] || [ $macchanger == "CAMBIAR" ] || [ $macchanger == "Cambiar" ]; then 
		   echo 
		   echo -e "\n$Verde*$Azul Cambiando MAC Address...\n"
		   echo
		   sudo service network-manager stop
		   sleep 1
		   echo -e "$Verde*$Azul wlan0 MAC Address:\n"$Verde
		   sleep 1
		   sudo ifconfig wlan0 down
		   sleep 1
		   sudo macchanger -a wlan0
		   sleep 1
		   sudo ifconfig wlan0 up
		   sleep 1
		   sudo service network-manager start
		   echo 
		   sleep 1
		   echo -e "\n$Verde*$Azul MAC Address Cambiada$Verde [ON]"$RESETCOLOR
		   sleep 1
elif [ $macchanger == "restaurar" ] || [ $macchanger == "RESTAURAR" ] || [ $macchanger == "Restaurar" ]; then 
		   echo -e "\n$Verde*$Azul Restaurando MAC Address..."
		   echo 
		   sudo service network-manager stop	
		   sleep 1
		   echo -e "\n$Verde*$Azul wlan0 MAC Address:\n"$Verde
		   sleep 1
		   sudo ifconfig wlan0 down
		   sleep 1
		   sudo macchanger -p wlan0
		   sleep 1
		   sudo ifconfig wlan0 up
		   sleep 1
		   sudo service network-manager start
		   echo 
		   sleep 1
		   echo -e "\n$Verde*$Azul MAC Address Restaurada$Rojo [OFF]"$RESETCOLOR
		   sleep 1
else
	           echo -e "\n$Rojo*$Verde Funcion invalida$Rojo [X]"$RESETCOLOR
		   echo 
		   sleep 1
fi

