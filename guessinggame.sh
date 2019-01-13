#! usr/bin/env bash
#continuously ask the user to guess the number of files in the current directory, until they guess the correct number.

#function to return no of files in the current directory
function num_files {
local num=0
num=$(ls -l|grep ^-|wc -l)
echo  $num
}

input=-1

#note that the while loop is made to  execute at least once, regardless of user input
# below condition is always true the first time the program runs because inut is initialiazed to -1
while [[ $input -ne $(num_files) ]]
do
	echo "make a guess for number of files in the current directory"
	read input

if [[ $input -lt 0 ]]
then echo "negative input is not allowed. Please enter again"

elif [[ $input -lt $(num_files) ]]
then
	echo "Your input is too low. Try again."

elif [[ $input -gt $(num_files) ]]
then
	echo "Your input it too high. Try again."
else
	echo "Congratulations. You got it right."
fi	
done

