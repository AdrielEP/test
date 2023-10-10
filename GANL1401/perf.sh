#!/bin/bash
source "../function.shlib"
source "configVar.shlib"


trimedList=($(get_ip))
# Print the array of IP addresses
echo "IP array: ${trimedList[@]}"

#todo:Ajout du "Matcheur"
#todo:trouver moyen pour créer tableau entre machine hote[KEY] et machine distante[VALUE]
machineName="ubuntu@"
ARRAY=( "1.86:1.21"
        "10.84:10.38"
        "11.86:11.34")

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