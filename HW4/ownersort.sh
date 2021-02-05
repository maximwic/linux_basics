#!/bin/bash

#Задание 5: Создать скрипт ownersort.sh, который в заданной папке копирует файлы в директории, названные по имени владельца каждого файла. Учтите, что файл должен принадлежать соответствующему владельцу

mkdir sort_by_owners 2>/dev/null
ls -l | while read i
do
	OWNER="$(echo $i | cut -d ' ' -f 3)"
	FILENAME="$(echo $i | cut -d ' ' -f 9)"
	if [[ ( $OWNER == $FILENAME ) && ( -n $OWNER ) ]] 
	then
		cp ./$OWNER ./sort_by_owners/
	fi	

done
