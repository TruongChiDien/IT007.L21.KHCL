#!/bin/sh
 
if [ -f ./$2 ];	then
	echo "Thu muc $2 khong ton tai" > ./$3
	exit 1
fi 
 
dem=0

for tep in $(ls ./$2);	do 	
	if grep -l $1 $(ls ./$2/$tep);	then 
		dem=$(($dem+1))
	fi 
done 
 
if [ $dem -eq 0 ]; then
	echo "Trong thu muc $2 khong co tap tin nao chua chuoi $1" > ./$3
	exit 1
else
	echo "Trong thu muc $2 co $count tap tin hua chuoi $1" > ./$3 
fi 
 
exit 0
