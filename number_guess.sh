#Prompt for user name upto 22 characters
echo "Enter your username:"
read USERNAME

# Check if user is in database
USER=$($PSQL "SELECT username, games_played, best_game FROM users WHERE username = '$USERNAME';")

# If there is no user in the database then insert user
if [[ -z $USER ]]
then
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username, games_played, best_game) VALUES ('$USERNAME', 0, 0);")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
# else read in the data from the database
else
  IFS=',' read USERNAME GAMES_PLAYED BEST_GAME <<< $USER
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
#Read in the users guess of the number
echo -e "\nGuess the secret number between 1 and 1000:"
read GUESS

#Start a ticker to trakc guesses at 1 for the first guess
GUESS_TICKER=1

# While the guess is not the number to guess check first if number and then if it is higer or lower than guess
while [[ $GUESS != $NUMBER_TO_GUESS ]]
do
  if [[ ! $GUESS =~ ^-?[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  elif [[ $GUESS > $NUMBER_TO_GUESS ]]
  then
    echo "It's lower than that, guess again:"
  elif [[ $GUESS < $NUMBER_TO_GUESS ]]
  then
    echo "It's higher than that, guess again:"
  fi
#read a new guess into the while loop
  read GUESS
#Increment the ticker by one as the user has made a second guess
  GUESS_TICKER=$(($GUESS_TICKER + 1))
done

if [[ $BEST_GAME > $GUESS_TICKER ]]
#A game has been played increment games ticker
GAMES_TICKER=$(($GAMES_PLAYED + 1))
then
  UPDATE_USER_RESULT=$($PSQL "UPDATE users SET best_game = $GUESS_TICKER, games_played = $GAMES_TICKER WHERE username = '$USERNAME';")
else
  UPDATE_USER_RESULT=$($PSQL "UPDATE users SET games_played = $GAMES_TICKER WHERE username = '$USERNAME';")
fi

echo "You guessed it in $GUESS_TICKER tries. The secret number was $NUMBER_TO_GUESS. Nice job!"