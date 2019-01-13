#makefile for the project
all: README.md

README.md: 
	echo "Guessing Game by stargazer">README.md
	echo "Ran on:">>README.md
	DATE>>README.md
	echo "Number of lines">>README.md
	cat guessinggame.sh|wc -l>>README.md

clean:
	rm README.md
