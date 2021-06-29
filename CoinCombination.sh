#!/bin/bash -x

echo "Welcome to the coin combinatin program"


Flipcoin=$((RANDOM%2))

if [ $Flipcoin -eq 0 ]
then
	echo "HEAD"
else
	echo "TAIL"
fi

declare -A Dict
H=0
T=0
for (( i=1; i<=10; i++ ))
do
Flipcoin=$((RANDOM%2))

if [ $Flipcoin -eq 0 ]
then
        Dict[Face1]="HEAD"
	((H++))
else
        Dict[Face2]="TAIL"
	((T++))
fi
done
echo ${Dict[@]}
a=$(($H * 10))
b=$(($T * 10))
echo "Percentage of Head occuring is " $a "%"
echo "Percentage of is Tail occuring " $b "%"

