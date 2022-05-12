echo "Flip a coin.."
result=$((RANDOM%2))
case $result in
	0) echo "Heads";;
	1) echo "Tails";;
esac
