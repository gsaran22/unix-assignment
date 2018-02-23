all: readme

readme:
	touch README.md
	echo "# MY-UNIX-WORKBENCH-PROJECT" >> README.md
	echo "Make was last run at  `stat -c %y README.md`" >> README.md
	echo "Here are the numbr of lines in guessinggame.sh " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md

