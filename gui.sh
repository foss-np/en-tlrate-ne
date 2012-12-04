#!/bin/bash

	gdialog --inputbox "Type here to Translitrate" 2> /tmp/input.txt
	if [ $? != 0 ]; then
		exit 0;
	fi

	./main.sh -f /tmp/input.txt > /tmp/show.txt
	cat /tmp/show.txt

# terminal has the problem with the devnagari script
	counter=1;
	rm -f /tmp/showgui.txt
	while read i; do
		sed "$counter!d" /tmp/input.txt >>/tmp/showgui.txt
		echo "$i" >>/tmp/showgui.txt
		counter=$(($counter+1))
	done < /tmp/show.txt

	gdialog --textbox /tmp/showgui.txt 50 60

