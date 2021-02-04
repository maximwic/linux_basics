#!/bin/bash
#Задание 1: Написать скрипт, который удаляет из текстового файла пустые строки и заменяет маленькие символы на большие (воспользуйтесь tr или sed).

IN_FILE=./task1_in_text.txt

rm  modified_task1_out_text.txt||touch modified_task1_out_text.txt 

cat $IN_FILE | while read i
do
	if [[ -z $i ]] 
	then
		continue
	else
		echo "$i" | tr [a-z] [A-Z] >> modified_task1_out_text.txt 
	fi
done
