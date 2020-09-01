#!/usr/bin/env bash
filenum=$(ls -l |grep "^-"|wc -l)
function guess_num {
 read guess 
 while [ $guess -ne $filenum ]
 do
		if [ $guess -gt $filenum ]
		then
			echo "You have guessed more... try again with less number and press Enter :"
			guess_num
		else
			echo "You have guessed less... try again with greater number and press Enter :"
			guess_num
		fi
 done
}
echo "Welcome to the guessing game!!..Hope u like it."
echo "Guess how many files are in the current directory and press Enter :"
guess_num
echo "wow..!! you guessed it right."
echo "Hope you enjoyed it."
