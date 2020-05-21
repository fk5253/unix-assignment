#!/usr/bin/env bash
filenum=$(ls | wc -l)

function guess_filenum {
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
			guess_filenum
		else
			echo "You have guessed less... try again with greater number and press Enter :"
			guess_filenum
		fi
	fi
}
echo "Welcome to the guessing game!"
echo "Guess how many files are in the current directory and press Enter :"
guess_filenum
