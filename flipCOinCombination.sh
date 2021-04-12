
echo "# CoinPercentage"

temp=1
x=$((RANDOM%2));

if [ $x -eq $temp ];
then
	echo "Head*"
else
	echo "Tails*"
fi
