#!/bin/bash

echo "Vérification de PHP..."
if ! command -v php >/dev/null 2>&1; then
    echo "PHP n'est pas installé. Installez-le d'abord."
    exit 1
fi

echo "Création du dossier ~/.local/bin s'il n'existe pas"
mkdir -p ~/.local/bin

echo "Téléchargement du CLI Kyra Framework dans ~/.local/bin/kyra-framework..."
curl -L https://raw.githubusercontent.com/kyra-andriatsitohaina/kyra-framework-installer/main/kyra-framework -o ~/.local/bin/kyra-framework

chmod +x ~/.local/bin/kyra-framework

echo "Installation terminée."

echo "Si vous n'avez pas ~/.local/bin dans votre PATH, ajoutez-le avec :"
echo 'export PATH="$HOME/.local/bin:$PATH"'
echo "Puis relancez votre terminal ou faites 'source ~/.bashrc' (ou .zshrc)"
echo "Vous pouvez ensuite lancer : kyra-framework new projet"
