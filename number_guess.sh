#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
echo "Enter your username:"
read USERNAME
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username= '$USERNAME';")

if [[ -z $USER_ID ]]
then
  INSERT_INTO_USERS=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME');")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username= '$USERNAME';")
  echo "Welcome, $USERNAME! It looks like this is your first time here." 
else 
  GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games WHERE user_id='$USER_ID';")
  BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM games WHERE user_id='$USER_ID';")
  
  # Nettoyage des espaces superflus
  GAMES_PLAYED=$(echo $GAMES_PLAYED | tr -d ' ')
  BEST_GAME=$(echo $BEST_GAME | tr -d ' ')
  
  if [[ -z $BEST_GAME ]]
  then
    BEST_GAME=0
  fi

  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

echo "Guess the secret number between 1 and 1000:"
read GUESS_SECRET
NUMBER_GUESS=1

while [[ $GUESS_SECRET -ne $SECRET_NUMBER ]]
do
  if ! [[ $GUESS_SECRET =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:" 
  elif [[ $GUESS_SECRET -gt $SECRET_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
  else
    echo "It's higher than that, guess again:"
  fi
  read GUESS_SECRET
  ((NUMBER_GUESS++))
done

# Correction de 'INSER' en 'INSERT'
INSERT_THE_GAME=$($PSQL "INSERT INTO games(user_id,number_of_guesses) VALUES('$USER_ID','$NUMBER_GUESS');")
echo "You guessed it in $NUMBER_GUESS tries. The secret number was $SECRET_NUMBER. Nice job!"
