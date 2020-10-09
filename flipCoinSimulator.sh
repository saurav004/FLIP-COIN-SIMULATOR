#! /bin/bash -x

echo "---------------------------------------------------------------------Welcome To FILP Coin Simulator------------------------------------------------------------------------------------"

#HEADS AND TAILS ARE GIVEN VALUES 1 AND 0 REPECTIVELY
HEADS=1
TAILS=0
HEADS_WIN_COUNTER=0
TAILS_WIN_COUNTER=0
#CHECKING IF HEAD WON OR TAIL WON 

for((i=0;i<10;i++))
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
echo "HEADS WON $HEADS_WIN_COUNTER TIMES AND TAILS WON $TAILS_WIN_COUNTER TIMES"
