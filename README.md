# en-tlrate-ne [नेपाली रुपान्तर्ण]

अंग्रेजी(लेटिन) लिपीमा लेखिएको लेखलाई देवनागरी लिपीमा रुपान्तर्ण गर्ने ।

English(latin) to Nepali transliterate.

यो लेख(प्रोग्राम) नेपाली विकिपीडियाको ह्याकाथन दौरान लेखीएको हो। जुनैड पी. भी. को कार्यबाट अवकल गरिएको हो।

This script was written during ne-wiki-hackathon. Orginally derived from the
the work of [Junaid P V][1].

## samples

	Quick brown fox jump over the lazy dog
	क्यूउइच्क ब्रोव्न फोक्ष जुम्प ओभेर ठे लाजेय दोग्

	Nepali wikipediyako dashau janmotsav, 2012 Jun 03
	नेपालि विकिपेदियाको दास्हाउ जान्मोत्साभ्, २०१२ जुन ०३

## Note

Might face display problem with the xterm, gnome-terminal.
In case or problem redirect to file and open with suitable editor.

## DEPENDENCIES

"bash", "sed" which is by default installed in in most linux distribution.

"gdialog" is also its available in most gnome base distribution if not you might have to install "zenity" or "gdialog"

## HOW-TO USE

	$ ./main.sh [file]

test run

	$ make test

using gui

	$ ./gui.sh

[1]: http://en.wikipedia.org/wiki/User:Junaidpv
