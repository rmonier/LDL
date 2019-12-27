#!/bin/bash
#---------------------------
#	LDL PAR ROMAIN MONIER v.2.1.0L
#		---------
#	YOUTUBE-DL PAR LES CONTRIBUTEURS YOUTUBE-DL (https://github.com/rg3/youtube-dl/)
#---------------------------

echo ""
echo "INSTALLATION DE LDL - LIKE TO DOWNLOAD"
echo "-----------------------------"
echo ""
echo -n " . "
echo -n " . "
echo -n " . "
echo -n " . "
echo -n " . "
echo -n " . "
echo -n " . "
if ! command -v python3 &>/dev/null
then
	echo ""
	echo "PYTHON3 N'EST PAS INSTALLÉ !"
	echo "Installation de Python3 en cours..."
	sudo apt-get -y install python3
	if command -v python3 &>/dev/null
	then
		echo "PYTHON3 INSTALLÉ !"
	else
		echo "-----------------------------"
		echo "ÉCHEC D'INSTALLATION !"
		echo "LDL - LIKE TO DOWNLOAD"
		echo ""
		exit
	fi
	echo ""
else
	echo ""
	echo "Mise à jour de Python3 en cours..."
	sudo apt-get -y install --only-upgrade python3
fi
if ! command -v avconv &>/dev/null
then
	echo ""
	echo "AVCONV N'EST PAS INSTALLÉ !"
	echo "Installation de avconv en cours..."
	sudo apt-get -y install libav-tools
	if command -v avconv &>/dev/null
	then
		echo "AVCONV INSTALLÉ !"
	else
		echo "-----------------------------"
		echo "ÉCHEC D'INSTALLATION !"
		echo "LDL - LIKE TO DOWNLOAD"
		echo ""
		exit
	fi
	echo ""
else
	echo ""
	echo "Mise à jour de avconv en cours..."
	sudo apt-get -y install --only-upgrade libav-tools
fi
echo -n " . "
echo -n " . "
echo -n " . "
echo -n " . "
echo -n " . "

cd "$(dirname ${BASH_SOURCE[0]})"
vraichemin="$(pwd)"
crontab -l | grep -v 'LDL.sh' | crontab - 2>&1 /dev/null
(crontab -l ; echo '*/10 * * * * bash "'"$vraichemin"'/LDL.sh"') | crontab - 2>&1 /dev/null

echo -n " . "

nohup bash "$vraichemin/LDL.sh" 1> /dev/null 2> /dev/null &

echo -n " . "
echo -n " . "
echo ""
echo ""
echo "Finalisation de l'installation..."
echo ""
echo "-----------------------------"
echo "INSTALLATION RÉUSSIE !"
echo "LDL - LIKE TO DOWNLOAD"
echo ""
exit 