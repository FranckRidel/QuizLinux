	function choixLevel {
		#chaque niveau générera des propositions différentes à chaque question
		clear
		echo "Choisissez le niveau de difficulté :"
		echo "1) Facile"
		echo "2) Difficile"
		echo "3) Expert"
		read -n1 i
		case $i in
			1) level="Facile"
				;;
			2) level="Difficile"
				;;
			3) level="Expert"
				;;
			*) echo "Réponse eronnée. Ressayez plus tard !"
				;;
		esac

		quiz

	}
