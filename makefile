all: README.md

README.md:
	echo "# Guess Game" > README.md
	echo "\n1. The date and time at which make was run:" >> README.md
	date "+%Y-%m-%d %H:%M:%S" >> README.md
	echo "\n2. The number of lines of code contained in guessinggame.sh is: 24" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
