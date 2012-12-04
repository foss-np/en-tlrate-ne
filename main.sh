#!/bin/bash

function Usage {
	echo "Argument Missing";
	echo -e "Usage: \ten-tlrate-ne [OPTION]... [STRING]";
	echo -e "\n\t-f inputfile"
}

# checking arguments
	if [ $# -eq 0 ]; then
		Usage;
		exit;
	fi

# latin to devnagari
	case $1 in
	-f) sed -f exp_latin $2 > /tmp/dev.txt ;;
	*) echo $@ | sed -f exp_latin > /tmp/dev.txt ;;
	esac

# modifer
	sed -f exp_dev /tmp/dev.txt > /tmp/tran.txt

# fixes
	sed -f exp_fixes /tmp/tran.txt

