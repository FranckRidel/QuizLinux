function quiz {
		total=0 					#total de bonnes réponses
		oops=0 						#total d'entrées eronnées 

		clear
		echo "Question 1: Qui a créé Linux ?"
		echo
		case $level in
			"Facile") 
				proposal1="Steve Jobs"
				proposal2="Linus Torvalds"
				proposal3="Richard Stallman"
				proposal4="Bill Gates"
				proposals #fonction qui affiche les 4 propositions
				read -n1 check
				checkCase=${check,,} #convertit la saisie utilisateur en minuscules, sert pour les fonction "caseX"
				check1=$checkCase #récupère le résultat pour l'envoyer dans le fichier généré  la fin
				case2  #fonction qui indique si la réponse est bonne ou mauvaise				
				answer1=$answer ;; #écrira dans le fichier généré à la fin le résultat choisi et "gagné" ou "perdu"
			"Difficile") 
				proposal1="Loonix Torvalds"
				proposal2="Linus Torvalds"
				proposal3="Unix Torvalds"
				proposal4="Linux Torvalds"
				proposals
				read -n1 check
				checkCase=${check,,}
				check1=$checkCase
				case2
				answer1=$answer ;;
			"Expert") 
				read -n1 check
				check1=${check,,}
				answer="linus torvalds"
				echo
				if [[ "$check1" =~ $answer ]]; then
					echo "Gagné !"
					sleep $t
					let total++ 
					answer1=$win
				else
					echo "Perdu !" 
					answer1=$lost
					sleep $t 
				fi ;;
		esac		

		clear
		echo "Question 2: Dans quel pays est né Linus torvalds ?"
		echo
		case $level in
			"Facile") 
				proposal1="France"
				proposal2="Etats-Unis"
				proposal3="Finlande"
				proposal4="Brésil"
				proposals
				read -n1 check
				checkCase=${check,,}
				check2=$checkCase
				case3
				answer2=$answer ;; 		
			"Difficile") 
				proposal1="Suède"
				proposal2="Norvège"
				proposal3="Finlande"
				proposal4="Danemark"
				proposals
				read -n1 check
				checkCase=${check,,}
				check2=$checkCase
				case3
				answer2=$answer ;; 
			"Expert") 
				read -n1 check
				check2=${check,,}
				answer="finlande"
				echo
				if [[ "$check2" =~ $answer ]]; then
					echo "Gagné !"
					sleep $t
					let total++
					answer2=$win
				else
					echo "Perdu !" 
					answer2=$lost
					sleep $t 
				fi ;;
		esac

		clear
		echo "Question 3: En quelle année Linux a-t-il été créé ?"
		echo
		case $level in
			"Facile") 
				proposal1="1984"
				proposal2="1991"
				proposal3="2004"
				proposal4="2011"
				proposals
				read -n1 check
				checkCase=${check,,}
				check3=$checkCase
				case2
				answer3=$answer ;; 		
			"Difficile") 
				proposal1="1989"
				proposal2="1991"
				proposal3="1995"
				proposal4="1998"
				proposals
				read -n1 check
				checkCase=${check,,}
				check3=$checkCase
				case2
				answer3=$answer ;; 
			"Expert") 
				read -n1 check3
				answer="1991"
				echo
				if [[ "$check3" =~ $answer ]]; then
					echo "Gagné !"
					sleep $t
					let total++ 
					answer3=$win
				else
					echo "Perdu !" 
					answer3=$lost
					sleep $t 
				fi
		esac

		clear
		echo "Question 4: Qu'est ce que Linux ?"
		echo
		case $level in
			"Facile") 
				proposal1="Un centre de données"
				proposal2="Une entreprise Californienne"
				proposal3="Un logiciel en ligne"
				proposal4="Un noyau"
				proposals
				read -n1 check
				checkCase=${check,,}
				check4=$checkCase
				case4
				answer4=$answer ;; 		
			"Difficile") 
				proposal1="Un système d'exploitation"
				proposal2="Une suite logicielle"
				proposal3="Un émulateur"
				proposal4="Un noyau"
				proposals
				read -n1 check
				checkCase=${check,,}
				check4=$checkCase
				case4
				answer4=$answer ;;
			"Expert") 
				read -n1 check
				checkCase=${check,,}
				check4=$checkCase
				answer="noyau"
				echo
				if [[ "$check4" =~ $answer ]]; then
					echo "Gagné !"
					sleep $t
					let total++ 
					answer4=$win
				else
					echo "Perdu !" 
					answer4=$lost
					sleep $t 
				fi ;;
		esac

		clear
		echo "Question 5: Par quel système d'exploitation Linus torvalds a-t-il été inspiré avant de créer son noyau Linux ?"
		echo
		case $level in
			"Facile") 
				proposal1="Minix"
				proposal2="Windows"
				proposal3="Mac OS X"
				proposal4="Android"
				proposals
				read -n1 check
				checkCase=${check,,}
				check5=$checkCase
				case1
				answer5=$answer ;; 		
			"Difficile") 
				proposal1="Minix"
				proposal2="Manix"
				proposal3="Matrix"
				proposal4="Monix"
				proposals
				read -n1 check
				checkCase=${check,,}
				check5=$checkCase
				case1
				answer5=$answer ;; 
			"Expert") 
				read -n1 check
				check5=${check,,}
				answer="minix"
				echo
				if [[ "$check5" =~ $answer ]]; then
					echo "Gagné !"
					sleep $t
					let total++
					answer5=$win
				else
					echo "Perdu !" 
					answer5=$lost
					sleep $t 
				fi ;;
		esac

		clear
		echo "Question 6: Avec quel projet créant des logiciels libres le noyau Linux est-il utilisé pour avoir un système d'exploitation complet ?"
		echo
		case $level in
			"Facile") 
				proposal1="Adobe Creative Suite"
				proposal2="GNU"
				proposal3="Google Sheets"
				proposal4="Libre Office"
				proposals
				read -n1 check
				checkCase=${check,,}
				check6=$checkCase
				case2
				answer6=$answer ;; 		
			"Difficile") 
				proposal1="GNO"
				proposal2="GNU"
				proposal3="GNOU"
				proposal4="GNI"
				proposals
				read -n1 check
				checkCase=${check,,}
				check6=$checkCase
				case2
				answer6=$answer ;; 
			"Expert") 
				read -n1 check
				check6=${check,,}
				answer="gnu"
				echo
				if [[ "$check6" =~ $answer ]]; then
					echo "Gagné !"
					sleep $t
					let total++ 
					answer6=$win
				else
					echo "Perdu !" 
					answer6=$lost
					sleep $t
				fi ;;
		esac

		clear
		echo "Question 7: Que représente la mascotte de Linux appelée Tux ?"
		echo
		case $level in
			"Facile") 
				proposal1="Un manchot"
				proposal2="Une tasse à café"
				proposal3="Un panda roux"
				proposal4="Nadine Morano"
				proposals
				read -n1 check
				checkCase=${check,,}
				check7=$checkCase
				case1
				answer7=$answer ;; 		
			"Difficile") 
				proposal1="Un manchot"
				proposal2="Un éléphant"
				proposal3="Un pingouin"
				proposal4="Un diablotin"				
				proposals
				read -n1 check
				checkCase=${check,,}
				check7=$checkCase
				case1
				answer7=$answer ;; 	
			"Expert") 
				read -n1 check
				check7=${check,,}
				answer="manchot"
				echo
				if [[ "$check7" =~ $answer ]]; then
					echo "Gagné !"
					sleep $t
					let total++ 
					answer7=$win
				else
					echo "Perdu !" 
					answer7=$lost
					sleep $t 
				fi ;;
		esac

		clear
		echo "Question 8: En quelle année cette mascotte est elle créée ?"
		echo
		case $level in
			"Facile") 
				proposal1="1984"
				proposal2="1989"
				proposal3="1991"
				proposal4="1996"
				proposals
				read -n1 check
				checkCase=${check,,}
				check8=$checkCase
				case4
				answer8=$answer ;; 		
			"Difficile") 
				proposal1="1990"
				proposal2="1992"
				proposal3="1994"
				proposal4="1996"
				proposals
				read -n1 check
				checkCase=${check,,}
				check8=$checkCase
				case4
				answer8=$answer ;;  
			"Expert") 
				read -n1 check8
				answer="1996"
				echo
				if [[ "$check8" =~ $answer ]]; then
					echo "Gagné !"
					sleep $t
					let total++ 
					answer8=$win
				else
					echo "Perdu !" 
					answer8=$lost
					sleep $t 
				fi ;;
		esac

		clear
		echo "Question 9: Quelle est la plus ancienne distribution Linux encore maintenue en 2015 ?"
		echo
		case $level in
			"Facile") 
				proposal1="Ubuntu"
				proposal2="FreeBSD"
				proposal3="Solaris"
				proposal4="Slackware"
				proposals
				read -n1 check
				checkCase=${check,,}
				check9=$checkCase
				case4
				answer9=$answer ;; 		
			"Difficile") 
				proposal1="OpenSuse"
				proposal2="Red Hat"
				proposal3="Debian"
				proposal4="Slackware"
				proposals
				read -n1 check
				checkCase=${check,,}
				check9=$checkCase
				case4
				answer9=$answer ;; 
			"Expert") 
				read -n1 check
				check9=${check,,}
				answer="slackware"
				echo
				if [[ "$check9" =~ $answer ]]; then
					echo "Gagné !"
					sleep $t
					let total++ 
					answer9=$win
				else
					echo "Perdu !" 
					answer9=$lost
					sleep $t 
				fi ;;
		esac

		clear
		echo "Question 10: Quelle est toute première distribution Linux ?"
		echo
		case $level in
			"Facile") 
				proposal1="Debian"
				proposal2="Toutou Linux"
				proposal3="HJ Lu"
				proposal4="Damn Small Linux"
				proposals
				read -n1 check
				checkCase=${check,,}
				check10=$checkCase
				case3
				answer10=$answer ;; 		
			"Difficile") 
				proposal1="TAMU"
				proposal2="MCC Interim Linux"
				proposal3="HJ Lu"
				proposal4="Softlanding Linux System"
				proposals
				read -n1 check
				checkCase=${check,,}
				check10=$checkCase
				case3
				answer10=$answer ;; 	
			"Expert") 
				read -n1 check
				check10=${check,,}
				answer="hj lu"
				echo
				if [[ "$check10" =~ $answer ]]; then
					echo "Gagné !"
					sleep $t
					let total++ 
					answer10=$win
				else
					echo "Perdu !" 
					answer10=$lost
					sleep $t 
				fi
		esac

		result
	}
