
echo "# CoinPercentage"

temp=1
count=1
Head=0
Tail=0

while [ $count != 50 ]
do

	x=$((RANDOM%2));

	declare -A coin

	if [ $x -eq $temp ];
	then
		Head=$(($Head + 1))
		coin[1]=*Head*
		echo ${coin[1]} "got won $Head Time"
	else
		Tail=$(($Tail + 1))
		coin[2]=*Tail*
		echo ${coin[2]} "got won $Tail Time"
	fi

	((count++))
done

if [ $Head -gt $Tail ];
then
        x=$((($Head-$Tail)*100/$Head))
        echo "Percentage of the singlet between Head to Tail is $x%"
else
        y=$((($Tail-$Head)*100/$Tail))
        echo "Percentage of the singlet between Tail to Head is $y% "
fi
