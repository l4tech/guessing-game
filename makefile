#makefile for the project
all: README.md

README.md: 
	echo "Guessing Game by schan">README.md
	echo "ran on DATE">>README.md
	cat guessinggame.sh|wc -l >>README.md

clean:
	rm README.md
