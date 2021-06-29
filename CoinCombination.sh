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

declare -A Dic

HH=0
HT=0
TH=0
TT=0
for (( i=1; i<=10; i++ ))
do
	dice1=$(( RANDOM%2 ))
	dice2=$(( RANDOM%2 ))
	if [ $dice1 -eq 0 ] && [ $dice2 -eq 0 ]
        then
                Dic[face1]="HH"
		((HH++))
        elif [ $dice1 -eq 0 ] && [ $dice2 -eq 1 ]

	then
                Dic[face2]="HT"
		((HT++))

	elif [ $dice1 -eq 1 ] && [ $dice2 -eq 0 ]

	then
                Dic[face3]="TH"
		((TH++))

	else
                Dic[face4]="TT"

		((TT++))

        fi
done


echo ${Dic[@]}
c=$(($HH * 10))
d=$(($HT * 10))
e=$(($TH * 10))
f=$(($TT * 10))


echo "Percentage of HH occuring is " $c "%"
echo "Percentage of HT occuring is " $d "%"
echo "Percentage of TH occuring is " $e "%"
echo "Percentage of TT occuring is " $f "%"



declare -A Dicti

HHH=0
HHT=0
HTH=0
HTT=0
THH=0
THT=0
TTH=0
TTT=0

for (( i=1; i<=10; i++ ))
do
 dice1=$(( RANDOM%2 ))
 dice2=$(( RANDOM%2 ))
 dice3=$(( RANDOM%2 ))

	if [ $dice1 -eq 0 ] && [ $dice2 -eq 0 ] && [ $dice3 -eq 0 ]

        then
                Dicti[face1]="HHH"
		((HHH++))
        elif [ $dice1 -eq 0 ] && [ $dice2 -eq 0 ] && [ $dice3 -eq 1 ]


	then
                Dicti[face2]="HHT"
		 ((HHT++))

	elif [ $dice1 -eq 0 ] && [ $dice2 -eq 1 ] && [ $dice3 -eq 0 ]


	then
                Dicti[face3]="HTH"
		 ((HTH++))

	elif [ $dice1 -eq 0 ] && [ $dice2 -eq 1 ] && [ $dice3 -eq 1 ]


        then
                Dicti[face4]="HTT"
		 ((HTT++))

	elif [ $dice1 -eq 1 ] && [ $dice2 -eq 0 ] && [ $dice3 -eq 0 ]


        then
                Dicti[face5]="THH"
		 ((THH++))

	elif [ $dice1 -eq 1 ] && [ $dice2 -eq 0 ] && [ $dice3 -eq 1 ]


        then
                Dicti[face6]="THT"
		 ((THT++))

	elif [ $dice1 -eq 1 ] && [ $dice2 -eq 1 ] && [ $dice3 -eq 0 ]


        then
                Dicti[face7]="TTH"
		 ((TTH++))


	else
                Dicti[face8]="TTT"
		 ((TTT++))



        fi
done
echo "${Dicti[@]}"
g=$(($HHH * 10))
h=$(($HHT * 10))
i=$(($HTH * 10))
j=$(($HTT * 10))
k=$(($THH * 10))
l=$(($THT * 10))
m=$(($TTH * 10))
n=$(($TTT * 10))


echo "Percentage of HHH occuring is " $g "%"
echo "Percentage of HHT occuring is " $h "%"
echo "Percentage of HTH occuring is " $i "%"
echo "Percentage of HTT occuring is " $j "%"
echo "Percentage of THH occuring is " $k "%"
echo "Percentage of THT occuring is " $l "%"
echo "Percentage of TTH occuring is " $m "%"
echo "Percentage of TTT occuring is " $n "%"
