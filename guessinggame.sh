function guessgame {

  
  echo "Please guess the number of files in current directory and then press Enter:"

  read response


}

guessgame

var=$(ls -1 | wc -l)

if [[ $response -eq $var ]]
then
	echo "entered guess is correct"
fi

while [[ $response -gt $var ]]
do
	echo "entered guess is high"
	guessgame
	if [[ $response -eq $var ]]
	then
		echo "entered guess is correct"
	fi
done

while [[ $response -lt $var ]]
do
	echo "entered guess is low"
	guessgame
	if [[ $response -eq $var ]]
	then
		echo "entered guess is correct"
	fi
done