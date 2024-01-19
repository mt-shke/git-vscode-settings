#!/bin/bash

if [ -z "$1" ]; then
    echo 'Need an user name parameter'
    return
else
     base_dossier="/home/$1/.config/Code/User"

fi


cp settings.json $base_dossier/settings.json
cp snippets.json $base_dossier/snippets/CustomSnippets.code-snippets.json
cp keybindings.json $base_dossier/keybindings.json