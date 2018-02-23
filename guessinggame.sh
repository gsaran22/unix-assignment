#!/usr/bin/env bash
#copy number of files in a var
nfiles=`ls | wc -l`
#echo $nfiles
#intialize var for loop
output="repeat"

#define function:
# This function prompts user to guess and enter a number
#   and return response using a var, whether his guess was correct or
#   higher/lower than the number of files in current dir
#   this function ends when user enter correct number
function checkNumberOfFiles {
echo "Please guess number of files in this dir"
read gnum
if [[ gnum -gt $nfiles ]]
then
        echo "Too high"
elif [[ gnum -lt $nfiles ]]
then
        echo "Too low"
else
        echo "Congratulations! your guess is correct"
output="Good Bye!"
echo $output
fi
}

# call function in a while loop. Loop ends when user guess right number.

while [[ $output != "Good Bye!" ]]
do
 checkNumberOfFiles
done

