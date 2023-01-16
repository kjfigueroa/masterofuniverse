#!/usr/bin/bash

# An example using the while loop
# By Kevin J. Figueroa

#just for print some styles in our outputs...
tab="$(printf '\t')"
bd=$(tput bold)
nobd=$(tput sgr0)
r=$(printf '\e[31m'); am=$(printf '\e[93m')
noc=$(printf '\e[0m')

#Inizializing a var in "0"
var0=0

op(){
    while [ $var0 -ne  $var1 ]; do
    echo "sequence's in $(( var0 += 1 ))..."; sleep 0.05
    done
}

cat << EOF
  
    In unix shell (that is for: ${bd}sh, bash, ${nobd}and ${bd}ksh${nobd}), 
    there is the next expressions in order to do numerics comparisons:
    
    num1 ${bd}${r}-eq${noc}${nobd} num2 : ${bd}${am}True${noc}${nobd} if num1 ${r}is equal to${noc} num2
    num1 ${bd}${r}-ne${noc}${nobd} num2 : ${bd}${am}True${noc}${nobd} if num1 ${r}is not equal to${noc} num2
    num1 ${bd}${r}-lt${noc}${nobd} num2 : ${bd}${am}True${noc}${nobd} if num1 ${r}is strictly less than${noc} num2
    num1 ${bd}${r}-le${noc}${nobd} num2 : ${bd}${am}True${noc}${nobd} if num1 ${r}is less than or equal to${noc} num2 
    num1 ${bd}${r}-gt${noc}${nobd} num2 : ${bd}${am}True${noc}${nobd} if num1 ${r}is strictly greater than${noc} num2
    num1 ${bd}${r}-ge${noc}${nobd} num2 : ${bd}${am}True${noc}${nobd} if num1 ${r}is greater than or equal to${noc} num2
    
    For the case of this script, it's using the ${bd}-ne${nobd} for make a comparison.
EOF

echo -e "\nPlease insert a number: \n" 
echo -e -n "\tA = "; read var1; 
echo -e ""; op; echo -e ""
exit 0
