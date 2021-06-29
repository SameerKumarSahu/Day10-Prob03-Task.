#!/bin/bash -x

echo "Welcome to the coin combinatin program"


Flipcoin=$((RANDOM%2))

if [ $Flipcoin -eq 0 ]
then
	echo "HEAD"
else
	echo "TAIL"
fi
