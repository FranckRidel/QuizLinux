function start {
		clear
		echo "*****************************************"
		echo -e "*        Quiz \"Histoire de Linux\"       *"
		echo "*****************************************"
		echo
		echo "Bonjour. Bienvenue sur ce quiz consacré à Linux"
		echo
		surname=""
		until [[ $surname =~ [:alpha:àâäéèêëîïôöùü] ]]; do
			echo -n "Quel est votre prénom ? "
			read surname
		done
		echo

		startok=0 					#autorise le script à accéder au questionnaire quand il passe à 1

		until  [[ $startok = 1 ]]; do
			echo -n "Etes vous prêt à répondre aux 10 questions ? (O/N) "
			read -n1 startTemp 			#récupère la saisie utilisateur telle quelle
			start=${startTemp,,} 	#convertit toute la saisie utilisateur en minuscules
			echo
			case $start in
				o) echo "Ok, allons-y $surname !"
					startok=1
					sleep $t
					;;
				n) echo "Une autre fois peut-être. Au revoir $surname !"
					sleep $t
					clear
					exit 0
					;;
				*) echo "Mauvaise réponse !"
					echo
			esac
		done
	}
