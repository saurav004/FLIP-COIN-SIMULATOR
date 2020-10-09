#! /bin/bash -x

echo "---------------------------------------------------------------------Welcome To FILP Coin Simulator------------------------------------------------------------------------------------"

#HEADS AND TAILS ARE GIVEN VALUES 1 AND 0 REPECTIVELY
HEADS=1
TAILS=0
HEADS_WIN_COUNTER=0
TAILS_WIN_COUNTER=0
#CHECKING IF HEAD WON OR TAIL WON 

#SIMULATES COIN FILP UNTIL ONE GETS TO 21
while [ $HEADS_WIN_COUNTER != 21 ] && [ $TAILS_WIN_COUNTER != 21 ]
do
	coinSaid=$((RANDOM%2))
	if [ $coinSaid == $HEADS ]
	then
		((HEADS_WIN_COUNTER++))
		echo "HEADS WON!!!!!!"
	else
		((TAILS_WIN_COUNTER++))
		echo "TAILS WON!!!!!!"
	fi
done

#CODE BELOW DISPLAYS OUTPUT
if [ $HEADS_WIN_COUNTER == 21 ]
then
	echo "HEADS WON BY $(($HEADS_WIN_COUNTER-$TAILS_WIN_COUNTER)) MORE WINS THAN TAILS "
	echo "HEADS WON $HEADS_WIN_COUNTER TIMES AND TAILS WON $TAILS_WIN_COUNTER TIMES"
else
	echo "TAILS WON BY $(($TAILS_WIN_COUNTER-$HEADS_WIN_COUNTER)) MORE WINS THAN HEADS"
	echo "TAILS WON $TAILS_WIN_COUNTER TIMES AND HEADS WON $HEADS_WIN_COUNTER TIMES"
fi
