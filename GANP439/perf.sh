#!/bin/bash
source "../function.shlib"
source "configVar.shlib"

# Print the array of IP addresses
trimedList=($(get_ip))
machineName=$(get_machineName)

#Matcheur: create an array of matching ip for each interface
ARRAY=()
for ((i=0; i<${#GANPIP[@]}; i++));do
    matchingPart="${GANPIP[$i]%.*}."
    for element in "${trimedList[@]}"; do
        if [[ "$element" == "$matchingPart"* ]]; then
            ARRAY+=("${GANPIP[$i]}:$element")
        fi
    done
done
echo "Array of matching interface: ${ARRAY[@]}"

echo "Nom machine: "$machineName
echo "IP machine: "$IP${trimedList[0]}
echo "---Bandwith test of the interface---" > perfResult.txt 

ssh  $machineName$IP${trimedList[0]} '
echo $(cd transceivers)
echo $(iperf -s | exit )
'

for data in "${ARRAY[@]}" ; do
    KEY="${data%%:*}"
    VALUE="${data##*:}"
    echo "Bandwith test  in progress"
    echo "
    Testing from interface $IP$KEY to $IP$VALUE
    " >> perfResult.txt
    iperf -c $IP$VALUE >> perfResult.txt
done
echo "Bandwith test done"