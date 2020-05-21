
all: files.txt ls README.md

files.txt:
	touch files.txt
	
ls:
	pwd | ls > files.txt

bash:
	bash guessinggame.sh


README.md:
	touch README.md
	echo "# Project The unix workbench" >> README.md
	
		
	echo "-----------------------------" >> README.md 
	echo " ## the make was run at:" >> README.md
	date +%D >> README.md
	date +%T >> README.md
	echo "_____________________________" >> README.md
	echo "### Number of lines contained in guessinggame.sh" >>README.md
	
	wc -l guessinggame.sh >> README.md
 







