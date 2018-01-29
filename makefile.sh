README.md:guessinggame.sh
	touch README.md
	echo "Title: Guessing Game" > README.md
	echo "Timestamp:" $$(date) >> README.md
	echo "No of lines in guessinggame.sh:" $$(wc -l < guessinggame.sh) >> README.md
	
clean:
	rm README.md
	