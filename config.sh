#!/bin/bash
source "../function.shlib"
source "configVar.shlib"

echo "Configuration of the network card"
for ((i=0; i<${#interfaces[@]}; i++))
do
	echo "----------------------------"
	echo "interface : ${interface[$i]}"
    echo "will have : ${net[$i]}.${host[$i]}"
	echo "-----setuping interface-----"
	setup "${interfaces[$i]}" "${net[$i]}.${host[$i]}"
done

