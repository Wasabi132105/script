#!/bin/bash

# start script set continue=y
echo "Thank you for use my Math script,please enter the number and operation type,enter '!'to quit"
continue="y"
while [ "$continue" != "n" ]; do


# input num1
    echo "Please enter first number:（enter'!'to exit)"
    read Num1
    if [ "$Num1" == "!" ]; then
        echo "Thank you for using!exiting..."
        break
    fi


# input num2
    echo "Please enter number:（enter'!'to exit)"
    read Num2
    if [ "$Num2" == "!" ]; then
        echo "Thank you for using!exiting..."
        break
    fi


# input Optype
    echo "Please choose operation type(+,-,*,/,also enter '!' to exit):"
    read OpType
    if [ "$OpType" == "!" ]; then
        echo "Thank you for using!exiting..."
        break
    fi

# if Optype is '+',NumOutput is Num1+Num2
    if [ "$OpType" == "+" ]; then
        NumOutput=$(($Num1 + $Num2))
        

# if Optype is '-',NumOutput is Num1-Num2
    elif [ "$OpType" == "-" ]; then
        NumOutput=$(($Num1 - $Num2))

# if Optype is '*',NumOutput is Num1*Num2
    elif [ "$OpType" == "*" ]; then
        NumOutput=$(($Num1 * $Num2))

# if Optype is '/',NumOutput is Num1/Num2
    elif [ "$OpType" == "/" ]; then
        NumOutput=$(($Num1 / $Num2))

# try again
    else
        echo "sorry,please try again)"
        continue
    fi
    
    # output result of calculation
    echo "Output: "$NumOutput
    #ask for continue
    echo "do you want to continue?  type y/n"
    read continue
    #if enter n,exit
    if [ "$continue" == "n" ]; then
        echo "exiting...!"
        break
    #remind enter again
    elif [ "$continue" != "y" ]; then
        echo "invalid input,please try again"
        continue
    fi

# end
done
echo "thank you for using!!ending...."