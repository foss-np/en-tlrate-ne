#!/bin/bash

# convert number
	sed -f expnum string > strnum

# literal scan
	sed -f expfull strnum > string1

# double modifer
	sed -f expmod string1 > string2

# full the half thing
	sed -f exphalf string2

rm string1 strnum string2

