#!/usr/bin/bash

sleep 0.5
echo
echo "~~~ FLIP THE COIN ~~~"
echo
sleep 0.5
echo "HEAD OR TAIL (1/0)?;-Head(1);-Tail(0)." | tr ";" "\n"
read get
choice=$(( $RANDOM % 2 ))
echo


if [[ "$get" == "1" && "$get" == "$choice" ]]; then
	echo "| Got it!! ITS HEAD |"
elif [[ "$get" == "0" && "$get" == "$choice" ]]; then
	echo "| Got it!! ITS TAIL |"
elif [[ "$get" == "1" && "$get" != "$choice" ]]; then
	echo "| OPPS! It's tail.  |"
elif [[ "$get" == "0" && "$get" != "$choice" ]]; then
	echo "| OPPS! It's head.  |"
else
	echo "| Invalid Options |"
fi
