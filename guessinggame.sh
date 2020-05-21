#!/usr/bin/env bash
filenum=$(ls | wc -l)

function guess_num {
	read guess
	if [[ $guess -eq $filenum ]]
	then
		echo "Amazing!!! You guessed it right!"
		echo "  So there is ..."
		for f in $(ls)
		do
			echo "  - $f and "
		done
		echo "    ... and that was it."
	else
		if [[ $guess -gt $filenum ]]
		then
			echo "You have guessed more... try again with less number and press Enter :"
			guess_num
		else
			echo "You have guessed less... try again with greater number and press Enter :"
			guess_num
		fi
	fi
}
echo "Welcome to the guessing game!!..Hope u like it."
echo "Guess how many files are in the current directory and press Enter :"
guess_num
