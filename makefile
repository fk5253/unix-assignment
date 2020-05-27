README.md: guessinggame.sh
       echo "# project title: unix-assignment" > README.md
       echo "$$(date)" >> README.md
       echo "number of line of **code** is" >> README.md
       egrep -c . guessinggame.sh >> README.md
      
clean:
     rm README.md
