#!/bin/bash
source "../function.shlib"
source "configVar.shlib"

echo "Pinging this machine interfaces and his Matching  one"

trimedList=($(get_ip))
# Print the array of IP addresses
echo "IP array: ${trimedList[@]}"


#Get IP of each interface and find is Matching interface on the other machine to ping them 
for ((i=0; i<${#GANL[@]}; i++))
do
	echo "----------------------------"
	echo "It's  ${GANL[$i]}   interface  "
    echo "with IP: ${GANLIP[$i]}"
	echo "-----Pinging interface-----"
	ping "${GANLIP[$i]}"

	#Find is matching interface to ping it 
    matchingPart="${GANLIP[$i]%.*}."
	echo "---Pinging is matching interface---"
    echo "IP part to match: $matchingPart"
    for element in "${trimedList[@]}"; do
        if [[ "$element" == "$matchingPart"* ]]; then
			echo "----------------"
            echo "Match is done: $element"
			echo "Matching interface $IP$element will be ping"
			ping "$element"
        fi
    done
done

