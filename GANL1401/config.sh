#!/bin/bash
source "../function.shlib"
source "configVar.shlib"

echo "Configuration of the network card"
for ((i=0; i<${#GANL[@]}; i++))
do
	echo "----------------------------"
	echo "interface : ${GANL[$i]}"
    echo "will have : ${GANLIP[$i]}"
	echo "-----setuping interface-----"
	setup "${GANL[$i]}" "${GANLIP[$i]}" 
done

