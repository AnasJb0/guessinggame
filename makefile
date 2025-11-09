README.md: guessinggame.sh
	echo "# Projet Guessing Game" > README.md
	echo "" >> README.md
	echo "Date d'exécution du make : $$(date '+%Y-%m-%d %H:%M:%S')" >> README.md
	echo "" >> README.md
	echo "Nombre de lignes dans guessinggame.sh : $$(wc -l < guessinggame.sh | tr -d ' ')" >> README.md
	echo "" >> README.md
	echo "Exécutez le jeu avec : \`bash guessinggame.sh\`" >> README.md
