#!/bin/sh
if [ $1 = "word" ]; then
		shuf --random-source=/dev/urandom -n $2 ~/.local/share/eff_large_wordlist.txt | xargs
else
	LC_ALL=C tr -dc 'A-Za-z0-9!"#$%&'\''()*+,-./:;<=>?@[\]^_`{|}~' </dev/urandom | head -c $1 ; echo
fi
