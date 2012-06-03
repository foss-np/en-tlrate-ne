#!/bin/bash

function Usage {
	echo -e "\nUsage: \t`basename $0` [File]";
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

# full the half thing
	sed -f exp_fixes /tmp/tran.txt

