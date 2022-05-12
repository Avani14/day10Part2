echo "Flip a coin.."
countH=0
countT=0
for ((i=0;i<=10;i++))
do
	n=$((RANDOM%2))
	if [[ $n -eq 0 ]]
	then
		countH=$(($countH+1))
	else
		countT=$(($countT+1))
	fi
done

echo "Head wins : $countH times"
echo "Tail wins : $countT times"
