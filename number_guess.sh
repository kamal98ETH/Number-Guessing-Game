#!/bin/bash

#connect to the database
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

#generate a random number between 1 and 1000
RANDOM_NUMBER=$(($RANDOM % 1000 + 1))


#prompt the user for username
echo Enter your username:
read USERNAME

#check if user already played 
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
#if user not found
if [[ -z $USER_ID ]]
then
  #display welcome message
  echo "Welcome, $USERNAME! It looks like this is your first time here."

  #add user to the database
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")

  #get the new user id
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

#if user found
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID")
  BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM games WHERE user_id=$USER_ID")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

#check if it's a number
CHECKER () {
  if [[ $1 =~ ^[0-9]+$ ]]
  then
    :
  else
    echo "That is not an integer, guess again:"
    read USER_GUESS
    CHECKER $USER_GUESS
  fi
}

#keep track of the user guesses
NUMBER_OF_GUESSES=0

#prompt the user for a guess
echo "Guess the secret number between 1 and 1000:"
read USER_GUESS
CHECKER $USER_GUESS
NUMBER_OF_GUESSES=$(($NUMBER_OF_GUESSES + 1))

#loop through the user guesses
while [[ $USER_GUESS != $RANDOM_NUMBER ]]
do
  #if guess if smaller then random number
  if [[ $USER_GUESS < $RANDOM_NUMBER ]]
  then
    echo "It's higher than that, guess again:"

  else
  #if guess is bigger then random number
    echo "It's lower than that, guess again:"
  fi

  #ask for another guess
  read USER_GUESS
  CHECKER $USER_GUESS
  NUMBER_OF_GUESSES=$(($NUMBER_OF_GUESSES + 1))

done

#add the game to the database
INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, number_of_guesses) VALUES($USER_ID, $NUMBER_OF_GUESSES)")

#number found
echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $RANDOM_NUMBER. Nice job!"
