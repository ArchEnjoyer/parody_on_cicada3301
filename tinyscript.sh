#!/bin/sh
for i in $(seq 1 14 47697)
do
    konetz=$(( $i + 13 ))
    nachalo=$(( $i + 1 ))
    vremya=$(sed -n "$i p" sw1.txt)
    sed -n "$nachalo,$konetz p" sw1.txt
    usleep $(( $vremya*40000 ))
    clear
done
