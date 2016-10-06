	function result {
		lost=$((10-$total-$oops))
		clear
		echo "Merci pour vos réponses $surname ! Vous êtes arrivé à la fin du quiz."
		sleep $t
		echo
		echo "Vous avez un total de $total bonne(s) réponse(s) sur 10"
		sleep $t
		resultTime=$(date +"%d-%m-%Y_%H:%M:%S") #date d'enregistrement apparaissant dans le titre du fichier de savegarde
		echo -e "Résultats de $surname : \rNiveau : $level \r$total bonne(s) réponse(s) sur 10 \r$lost mauvaise(s) réponse(s) \r$oops entrée(s) eronnée(s) \r\rRéponse 1: $check1  : $answer1 \rRéponse 2: $check2  : $answer2 \rRéponse 3: $check3  : $answer3 \rRéponse 4: $check4  : $answer4 \rRéponse 5: $check5  : $answer5 \rRéponse 6: $check6  : $answer6 \rRéponse 7: $check7  : $answer7 \rRéponse 8: $check8  : $answer8 \rRéponse 9: $check9  : $answer9 \rRéponse 10: $check10  : $answer10" > ./results/quizHistoireLinux$resultTime.txt
		echo
		echo "Les résultats détaillés sont enregistrés sur le fichier quizLinux$resultTime.txt dans le dossier "results" se trouvant au chemin suivant:"
		sleep $((t-1))
		pwd
		sleep $((t+1))
		echo
		echo "A bientôt pour une autre partie."
		echo
		exit 0
	}
