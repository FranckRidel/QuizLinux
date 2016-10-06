#La fonction case1 à la bonne réponse en première position
	function case1 {
		case $checkCase in 
					1) echo $win
						sleep $t
						let total++ 
						answer="$proposal1 : $win" ;;
					2) echo $lost 
						sleep $t 
						answer="$proposal2 : $lost" ;;
					3) echo $lost 
						sleep $t 
						answer="$proposal3 : $lost" ;;
					4) echo $lost
						sleep $t
						answer="$proposal4 : $lost"  ;;
					*) echo $wrong
						let oops++
						answer=$wrong
						sleep $t ;;
				esac
	}

	#La fonction case2 à la bonne réponse en deuxième position
	function case2 {
		case $checkCase in 
					1) echo $lost						
						sleep $t 
						answer="$proposal1 : $lost" ;;
					2) echo $win
						sleep $t
						let total++ 
						answer="$proposal2 : $win" ;;
					3) echo $lost 
						sleep $t 
						answer="$proposal3 : $lost" ;;
					4) echo $lost
						sleep $t
						answer="$proposal4 : $lost"  ;;
					*) echo $wrong
						let oops++
						answer=$wrong
						sleep $t ;;
				esac
	}

	#La fonction case3 à la bonne réponse en troisième position
	function case3 {
		case $checkCase in 
					1) echo $lost						
						sleep $t 
						answer="$proposal1 : $lost" ;;
					2) echo $lost						
						sleep $t 
						answer="$proposal2 : $lost" ;;
					3) echo $win
						sleep $t
						let total++ 
						answer="$proposal3 : $win" ;;
					4) echo $lost
						sleep $t
						answer="$proposal4 : $lost"  ;;
					*) echo $wrong
						let oops++
						answer=$wrong
						sleep $t ;;
				esac
	}

	#La fonction case4 à la bonne réponse en quatrième position
	function case4 {
		case $checkCase in 
					1) echo $lost						
						sleep $t 
						answer="$proposal1 : $lost" ;;
					2) echo $lost						
						sleep $t 
						answer="$proposal2 : $lost" ;;
					3) echo $lost						
						sleep $t 
						answer="$proposal3 : $lost" ;;
					4) echo $win
						sleep $t
						let total++ 
						answer="$proposal4 : $win" ;;
					*) echo $wrong
						let oops++
						answer=$wrong
						sleep $t ;;
				esac
	}
