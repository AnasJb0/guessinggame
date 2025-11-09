
function ask_guess {
    echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
    read user_guess
}

file_count=$(ls -1 | wc -l)

while true; do
    ask_guess
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
