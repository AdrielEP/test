#!/bin/bash
source "../function.shlib"
source "configVar.shlib"

echo "Configuration of the network card"
for ((i=0; i<${#GANP[@]}; i++))
do
	echo "----------------------------"
	echo "interface : ${GANP[$i]}"
    echo "will have : ${GANPIP[$i]}"
	echo "-----setuping interface-----"
	setup "${GANP[$i]}" "${GANPIP[$i]}" 
done

