#!/usr/bin/env bash
# guessinggame.sh
# Jeu de devinette : combien de fichiers sont dans le répertoire actuel ?

function ask_guess {
    echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
    read user_guess
}

# Compter le nombre de fichiers (non cachés)
file_count=$(ls -1 | wc -l)

# Démarrer la boucle
while true; do
    ask_guess

    # Vérification si entrée est un nombre
    if ! [[ $user_guess =~ ^[0-9]+$ ]]; then
        echo "Veuillez entrer un nombre valide."
        continue
    fi

    if [[ $user_guess -lt $file_count ]]; then
        echo "Trop bas ! Essayez encore."
    elif [[ $user_guess -gt $file_count ]]; then
        echo "Trop haut ! Essayez encore."
    else
        echo "Bravo ! 🎉 Vous avez deviné correctement : il y a $file_count fichiers."
        break
    fi
done
