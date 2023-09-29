#!/bin/bash
source "../function.shlib"
source "configVar.shlib"

echo "Pinging this machine interfaces and his Matching  one"

linked=$(find /home/ubuntu22/transceivers -name "configVar.shlib" -type f -not -path "$(pwd)/*")
echo "Other machine path: "$linked

scopingList=$(sudo cat $linked | grep 'IP=('| awk -F'[=]' '{print $2}')
echo "IP list to get : "$scopingList

#Remove unwanted characters from the string-> ( ) "
list_string="${scopingList//\(/}"
list_string="${list_string//\)/}"
list_string="${list_string//\"/}"

#Use IFS  env. var. to split the string into an array
IFS=" " read -a trimedList <<< "$list_string"
echo "Data in the usable array  ${trimedList[@]}"

#Get IP of each interface and find is Matching interface on the other machine to ping them 
for ((i=0; i<${#GANP[@]}; i++))
do
	echo "----------------------------"
	echo "It's  ${GANP[$i]}   interface  "
    echo "with IP: ${GANPIP[$i]}"
	echo "-----Pinging interface-----"
	ping "${GANPIP[$i]}"

	#Find is matching interface to ping it 
    matchingPart="${GANPIP[$i]%.*}."
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

