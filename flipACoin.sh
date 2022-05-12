echo "Flip a coin.."
countH=0
countT=0
function flip(){
while [[ $countH -lt 21 && $countT -lt 21 ]]
do
	n=$((RANDOM%2))
	if [[ $n -eq 0 ]]
	then
		countH=$(($countH+1))
	else
		countT=$(($countT+1))
	fi
done
}
flip
if [[ $(($countH-$countT)) -eq 2 ]]
then
	echo "Head wins : $countH times"
elif [[ $(($countT-$countH)) -eq 2 ]]
then
	echo "Tail wins : $countT times"
else
	echo "Its a tie"
	flip
fi
