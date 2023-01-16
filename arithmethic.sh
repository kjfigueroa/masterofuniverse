#!/usr/bin/bash

# check out the arithmetic operators
# By Kevin J. Figueroa

#just for print a tabulator in our outputs...
tab="$(printf '\t')"

#Numeric operators
nop (){
    sum=$((Num1 + Num2))
    sub=$((Num1 - Num2))
    mul=$((Num1 * Num2))
    div=$((Num1 / Num2))
    mod=$((Num1 % Num2))
cat << EOF
            Sum (+) ${tab}${tab}:${tab} $sum
            Subtraction (+) ${tab}:${tab} $sub
            Multiplication (+) ${tab}:${tab} $mul
            Division (+) ${tab}:${tab} $div
            Module (+) ${tab}${tab}:${tab} $mod
EOF
}

#Logical - Comparison operators
cop (){
    gtet=$((Num1 >= Num2))
    ltet=$((Num1 <= Num2))
    gt=$((Num1 > Num2))
    lt=$((Num1 < Num2))
    eq=$((Num1 == Num2))
    neq=$((Num1 != Num2))
cat << EOF
            Greather than or equal to ${tab}:${tab} $gtet
            Less than or equal to ${tab}:${tab} $ltet
            Greather than ${tab}${tab}:${tab} $gt
            Less than ${tab}${tab}${tab}:${tab} $lt
            Equal ${tab}${tab}${tab}:${tab} $eq
            Not Equal ${tab}${tab}${tab}:${tab} $neq
EOF
cat << EOF
    
    In Bash, when we run a comparison operators
    We need to understand its response as:

    "1" is TRUE
    "0" is FALSE

EOF
}

#Logical - Assignement Operators
aop (){
    asum=$((Num1 += Num2))
    asub=$((Num1 -= Num2))
    amul=$((Num1 *= Num2))
    adiv=$((Num1 /= Num2))
    amod=$((Num1 %= Num2))
cat << EOF
            Assignement for A += B ${tab}:${tab} $asum
            Assignement for A -= B ${tab}:${tab} $asub
            Assignement for A *= B ${tab}:${tab} $amul
            Assignement for A /= B ${tab}:${tab} $adiv
            Assignement for A %= B ${tab}:${tab} $amod
EOF
}

echo -e "\nPlease insert two numbers (parameters): \n" 
echo -e -n "\tA = "; read Num1; echo -e -n "\tB = "; read Num2
echo -e "\n---------Numeric Operators:\n"; nop
echo -e "\n---------Comparison Operators:\n"; cop
echo -e "\n---------Assignment Operators:\n"; aop; echo -e "\n"

exit 0
