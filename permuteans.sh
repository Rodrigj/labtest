#!/bin/bash
j=0
ARRAY=(0 0 0 0 0 0)
if [ "$#" -ne 6 ]; then
    echo "Illegal number of arguments"
	exit 3
fi

for i in "${@:2}"
do
	ARRAY[$j]=$i	
((j++))
		
done

ARRAY=( $(shuf -e "${ARRAY[@]}") )
echo "${ARRAY[@]}"

echo $1
echo""
echo "a) ${ARRAY[1]}"
echo ""
echo "b) ${ARRAY[2]}"
echo""
echo "c) ${ARRAY[3]}"
echo""
echo "d) ${ARRAY[4]}"
echo"" 
echo "e) ${ARRAY[5]}"
echo""

if [ ${ARRAY[1]} == 4 ]
then
exit 1
fi
if [ ${ARRAY[2]} == 4 ]
then
exit 2
fi
if [ ${ARRAY[3]} == 4 ]
then
exit 3
fi
if [ ${ARRAY[4]} == 4 ]
then
exit 4
fi
if [ ${ARRAY[5]} == 4 ]
then
exit 5
fi






 
