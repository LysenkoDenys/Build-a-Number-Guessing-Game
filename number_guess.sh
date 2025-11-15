#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only --no-align -c"

	MAIN_SCRIPT(){
# generate a random secret number:
SECRET_NUMBER=$(( RANDOM % 1000+1 ))
# counter of guesses:
  GUESSES=0
# greeeting an user:
echo "Enter your username:"
read USERNAME

			USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME';" | xargs)
	# if USER_ID is empty 
	  if [[ -z $USER_ID ]]
	  then
		  # new user
			$PSQL "INSERT INTO users (username) VALUES('$USERNAME')"  > /dev/null
			USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME';" | xargs)
	    echo "Welcome, $USERNAME! It looks like this is your first time here."
		else
    GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID" | xargs)
    BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id=$USER_ID" | xargs)
			if [[ -z $BEST_GAME ]]; then
  			BEST_GAME=0
			fi
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
		fi
		while true
		do
			echo "Guess the secret number between 1 and 1000:"
			read USER_INPUT
# check for the valid number:
				if ! [[ $USER_INPUT =~ ^[0-9]+$ ]];
				then
					echo "That is not an integer, guess again:"
					continue
				else
# increment guess counter if input is valid:
						((GUESSES++))
						if (( USER_INPUT > SECRET_NUMBER )); then
								echo "It's lower than that, guess again:"
						elif (( USER_INPUT < SECRET_NUMBER )); then
								echo "It's higher than that, guess again:"
						else
								echo "You guessed it in $GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
								$PSQL "INSERT INTO games (user_id, guesses) VALUES($USER_ID, $GUESSES);" > /dev/null
								exit
						fi
				fi
		done
}
MAIN_SCRIPT