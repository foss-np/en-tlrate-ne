#!/bin/bash

function Usage {
	echo "Argument Missing";
	echo -e "Usage: \t`basename $0` [File]";
}

# checking arguments
	if [ $# -eq 0 ]; then
		Usage;
		exit;
	fi

# latin to devnagari
	sed -f exp_latin $1 > /tmp/dev.txt

# modifer
	sed -f exp_dev /tmp/dev.txt > /tmp/tran.txt

# fixes
	sed -f exp_fixes -i /tmp/tran.txt

# terminal has the problem with the devnagari script
	counter=1;
	rm /tmp/show.txt
	while read i; do
		sed "$counter!d" string.txt >>/tmp/show.txt
		echo "$i" >>/tmp/show.txt
		counter=$(($counter+1))
	done < /tmp/tran.txt

	cat /tmp/show.txt

	gdialog --textbox /tmp/show.txt 50 60

