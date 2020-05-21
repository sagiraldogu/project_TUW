echo "how many files do you think are in the directory?"


numero=$(ls -l | grep "^-"|wc -l)

read respuesta

function condicion {
	if [[ $respuesta -lt $numero ]]
		then
			echo "your answer is less, try again"
		else [[ $respuesta -gt $numero ]]
			echo "your answer is  higher, try again"
	fi
	}
	



if [[ $respuesta =~ ^[0-9]+$ ]]
then 
	while [[ $respuesta != $numero ]]
	do 
	
		condicion
		read respuesta

	done

	echo "Congratulations, $respuesta is the number of files!!"
	
else 
echo " error, your answer should be a number"

fi



