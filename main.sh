#!/bin/bash

# convert number
	sed -f expnum string > strnum

# first iteration
	sed -f expfull strnum > string1

# full the half thing
	sed -f exphalf string1

rm string1 strnum

