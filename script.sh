#! /////////bin/bash

FILES=$(ls *.txt)
SHORT="short_"
MEDIUM="medium_"
LONG="long_"
for FILE in $FILES
	do
		LINE_NUMBER=$(wc -l $FILE | awk '{print $1}')
		if [ $LINE_NUMBER == 0 ]
		then
			rm $FILE
		elif [ $LINE_NUMBER -lt 10 ]
		then
			mv $FILE $SHORT$FILE
		elif [ $LINE_NUMBER -le 20 ]
		then
			mv $FILE $MEDIUM$FILE
		else
			mv $FILE $LONG$FILE
		fi
done
