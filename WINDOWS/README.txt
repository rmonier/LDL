LDL - LIKE TO DOWNLOAD

PAR ROMAIN MONIER v.2.1.2W

YOUTUBE-DL PAR LES CONTRIBUTEURS YOUTUBE-DL (https://github.com/rg3/youtube-dl/)

-----------------------------

0. PRÉ-REQUIS

	LDL utilise le programme YOUTUBE-DL. Il est inclus dans le dossier et nécessite le Microsoft Visual C++ 2010 Redistributable Package (x86) disponible à cette adresse : https://www.microsoft.com/en-US/download/details.aspx?id=5555
	YOUTUBE-DL utilise aussi FFmpeg, lui aussi déjà inclus dans le dossier.
	
1. CONFIGURATION

	Avant d'installer LDL, il faut configurer son comportement. Deux fichiers sont à modifier : path.list et play.list
	
	a. Dans path.list indiquer le chemin vers le dossier qui recevra les musiques. Par exemple : C:\lenna\Music\DL FROM SOUNDCLOUD
	    NE PAS METTRE D'ANTISLASH À LA FIN DU CHEMIN, COMME INDIQUÉ DANS L'EXEMPLE !
	b. Dans play.list indiquer les URLs à télécharger. Il faut revenir à la ligne entre chaque URL. Elles peuvent pointer vers des playlists, des utilisateurs, et la limite de téléchargement est celle de YOUTUBE-DL.
	    Par exemple : https://soundcloud.com/klesoninsa/sets/kasual-local-session
							  https://soundcloud.com/klesoninsa/sets/kls-24h-insa-2018
							  https://www.youtube.com/playlist?list=PLEaX1aOMIq5mWyGuBB53XWBS4qxsP-dy3

2. INSTALLATION

	Pour installer LDL, placer tout le dossier dans un emplacement fixe. Une fois cela fait, il suffit de lancer install.bat et LDL sera installé.
	Si le dossier vient à être déplacé, il faudra relancer le fichier install.bat.
	
3. UTILISATION

	LDL est automatique, néanmoins il est possible de lancer l'actualisation manuellement. Pour cela, lancer le fichier LDL.bat.
	Les musiques ne sont téléchargées qu'une unique fois, ainsi si une même musique apparait dans plusieurs playlists à la fois, elle ne sera téléchargée que dans la première playlist indiquée dans play.list.
	De plus, si une musique est supprimée de l'ordinateur, elle ne sera pas re-téléchargée. Pour réinitialiser les téléchargements il suffit d'effacer le fichier archive.list situé dans le dossier youtube-dl.
	Les musiques absentes seront alors téléchargées à nouveau.
	
4. MODIFICATION AVANCÉE

	Par défaut, LDL va actualiser les morceaux à télécharger toutes les 10 minutes. Pour modifier ce comportement, ouvrir le fichier install.bat et remplacer la ligne suivante :
	
		schtasks /create /F /tn LikeToDownload /sc minute /mo 10 /tr "%~dp0\LDL.vbs" > nul 2> nul
	
	en modifiant le nombre de minutes qui se trouve après /mo. Par exemple, si l'on veut une actualisation toutes les minutes, on aura la ligne suivante :
	
		schtasks /create /F /tn LikeToDownload /sc minute /mo 1 /tr "%~dp0\LDL.vbs" > nul 2> nul

	Sauvegarder le fichier, puis relancer install.bat pour appliquer les modifications.
	
5. CONTACT

	ROMAIN MONIER : https://twitter.com/r_Romain0609
	YOUTUBE-DL : https://rg3.github.io/youtube-dl/about.html