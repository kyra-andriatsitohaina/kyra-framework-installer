#!/bin/bash

echo "Vérification de PHP..."
if ! command -v php >/dev/null 2>&1; then
    echo "PHP n'est pas installé. Installez-le d'abord."
    exit 1
fi

echo "Téléchargement du CLI Kyra Framework..."
curl -L https://raw.githubusercontent.com/kyra-andriatsitohaina/kyra-framework-installer/main/kyra-framework -o /usr/local/bin/kyra-framework
chmod +x /usr/local/bin/kyra-framework

echo "Installation terminée. Utilisez : kyra-framework new projet"
