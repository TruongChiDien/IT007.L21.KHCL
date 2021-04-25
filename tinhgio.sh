#!/bin/sh

if [ $1 -ge 24 ]; then
	echo "Gio khong hop le" > ./kq.txt
	exit 1
fi

if [ $2 -ge 60 ]; then
	echo "Phut khong hop le" > ./kq.txt
	exit 1
fi

if [ $3 -gt 480 ]; then
	echo "Thoi gian lam viec khong hop le" > ./kq.txt
	exit 1
fi

total=$(($1 * 60 + $2 + $3 ))

hour=$((total / 60))

while [ $hour -ge 24 ]; do
	hour=$(($hour - 24))
done

minute=$((total % 60))

echo $hour $minute > ./kq.txt

exit 0


