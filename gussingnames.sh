function getthecount {
  cnt=$(find . -maxdepth 1 -type f|wc -l)
  echo $cnt
}

count=$(getthecount)
echo "Hello! Welcome to Guessing Game! =)"
echo "Guess the number of files in my current directory"
read num

while [[ $count -ne $num ]]
do
  if [[ $count -gt $num ]]
  then
    echo "Your guess is too low! Try another number, please"
    read num
  elif [[ $count -lt $num ]]
  then
    echo "Your guess is to high! Try another number, please"
    read num
  fi
done

echo "Congrats! You have guessed right!"