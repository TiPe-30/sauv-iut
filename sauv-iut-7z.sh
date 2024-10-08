#!/bin/bash

# fait une sauvegarde de la session avec une archive individuelle
# puis, en argument, place la ressource sur le périphérique de stockage

if [[ ! -d "$1" ]];
    then
    echo "Le répertoire spécifé est introuvable"
    exit 1;
    fi

if [[ ! -w "$1" ]];
    then
    echo -e "Je n'ai pas permissions nécessaires pour le dossier : $1\n chmod +x $1 pour donner les permissions!"
    exit 1;
    fi

if [[ -z $2 ]];
    then
    echo "Vous n'avez pas spécifié le nom de votre archive !"
    echo "$0 /destination/Archive nomArchive"
    fi

mkdir -p $1/$2

for element in ~/*;
    do
    7z a $1/$2/$element.7z $element 1> /dev/null
    echo "Archivage de $element terminé !"
    done






