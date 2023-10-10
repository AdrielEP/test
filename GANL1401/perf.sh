#!/bin/bash
source "../function.shlib"
source "configVar.shlib"

#todo: créer fonction GetIP qui vas chercher les IP de l'autre machine avec le bloc 
# de code ci-dessous

#Find the path to configVar of the second machine
linked=$(find /home/ubuntu22/code/transceivers -name "configVar.shlib" -type f -not -path "$(pwd)/*")
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

#todo:Ajout du "Matcheur"
#todo:trouver moyen pour créer tableau entre machine hote[KEY] et machine distante[VALUE]
machineName="ubuntu@"
ARRAY=( "1.86:1.21"
        "10.84:10.38"
        "11.86:11.34")

#
# echo $( sudo ssh $machineName$IP${trimedList[0]})
# echo $(cd transceivers)
# echo $(rm perfResult.txt)
echo "Nom machine: "$machineName
echo "IP machine: "$IP${trimedList[0]}
echo "---Bandwith test of the interface---" > perfResult.txt 

ssh  $machineName$IP${trimedList[0]} '
echo $(cd transceivers)
echo $(iperf -s | exit )
'

for animal in "${ARRAY[@]}" ; do
    KEY="${animal%%:*}"
    VALUE="${animal##*:}"
    echo "Bandwith test  in progress"
    echo "
    Testing from interface $IP$KEY to $IP$VALUE
    " >> perfResult.txt
    iperf -c $IP$VALUE >> perfResult.txt
done
echo "Bandwith test done"