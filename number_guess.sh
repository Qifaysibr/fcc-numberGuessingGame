#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username: "
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

if [[ -z $USER_ID ]]; then
  echo "$(PSQL "INSERT INTO users(username) VALUES('$USERNAME')")"
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM game WHERE user_id=$USER_ID")
  echo "Welcome, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses. "
fi

