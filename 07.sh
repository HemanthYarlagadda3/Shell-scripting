#!/bin/bash

echo "Welcome to the basic calculator !!!"

read -p  "Enter the requried math operation For  Add(+) Sub(-) Multi(*) div(/) :- " operation

if [ "$operation" == "+" ]; then
        read -p "enter first number:-" A
        read -p "enter second number:-" B
        c=$((A + B))
        echo "Addition of your two numbers $A & $B is $c"

elif [ "$operation" == "-" ]; then
        read -p "enter first number:-" A
        read -p "enter second number:-" B
        c=$((A - B))
        echo "Subtraction  of your two numbers $A & $B is $c"

elif [ "$operation" == "*" ]; then
        read -p "enter first number:-" A
        read -p "enter second number:-" B
        c=$((A * B))
        echo "Multiplication  of your two numbers $A & $B is $c"

elif [ "$operation" == "/" ]; then
        read -p "enter first number:-" A
        read -p "enter second number:-" B
        c=$((A / B))
        echo "Division  of your two numbers $A & $B is $c"

else

    echo "Invalid operator !!,....please enter + , - , * , / "

fi

