#!/bin/bash

chars="/-\|"



mid="12"
for (( i=0; i<5;i++ )); do
	for (( j=0; j<"$mid-2"; j++ )); do
		echo -n " "
	done
	printf	 "\t###\n";
	sleep 0.1
done

for (( i=0; i<10;i++ )); do
	sleep 0.3
	place="$mid - $i"
	for (( j=0; j<$place; j++ )); do
		echo -n " "
	done
	echo -n "//"
	place="$mid - $i + 5"
	for (( j=0; j<"$i"; j++ )); do
		echo -n " "
	done
	echo -n "||"
	for (( j=0; j<"$i"; j++)); do
		echo -n " "
	done
		echo -n "\\\\"
	printf "\n"
done
