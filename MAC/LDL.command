#!/bin/bash
#---------------------------
#	LDL PAR ROMAIN MONIER v.2.1.0M
#		---------
#	YOUTUBE-DL PAR LES CONTRIBUTEURS YOUTUBE-DL (https://github.com/rg3/youtube-dl/)
#---------------------------

echo "LDL - LIKE TO DOWNLOAD"
echo ""

cd "$(dirname ${BASH_SOURCE[0]})"
vraichemin="$(pwd)"
python3 "$vraichemin/youtube-dl/youtube-dl" -U
echo "YOUTUBE-DL LAUNCHED"
echo ""

chemin=$(head -n 1 "$vraichemin/path.list")
while IFS="" read -r line || [[ -n "$line" ]]
do
	echo "Mise à jour de ${line##*/} en cours"
	echo ""
	python3 "$vraichemin/youtube-dl/youtube-dl" -x -i --audio-format mp3 --download-archive  "$vraichemin/youtube-dl/archive.list" --embed-thumbnail --audio-quality 0 -o "$chemin/%(playlist)s/%(title)s.%(ext)s" "$line"
	echo ""
	echo "Mise à jour terminée !"
	echo ""	
	echo ""
done < "$vraichemin/play.list"

echo "YOUTUBE-DL CLOSED"
echo ""
echo "-----------------------------"
echo "Fin des téléchargements."
echo "LDL - LIKE TO DOWNLOAD"
echo ""

exit 