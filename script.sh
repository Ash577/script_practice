#!/bin/bash 
## use -x to see progress of execution

<<cover

# echo examples

    echo "hello world"
    echo "hello world one two three "
    echo  "one\ttwo\nthree"
    echo "string with \"double\" quotes"

# redirection examples

    echo "example of redirection in file named redirection.sh" > redirection.sh
    echo "add new line to same file using double arrow >> " >> redirection.sh
# singel line comment with no space between # and text
<<multi_line_comment 
    paragraph text 1
    paragraph text 2 
multi_line_comment
# variable examples
 # variable is written in upper case by convention

    VAR="hello world"
    echo $VAR

# multi word variable

    a="this is line 1"
    b="this is line 2"
    c="${a} ${b}"
    echo "${c}"

#HOME / USER / HOSTNAME variable

    VAR_PATH=$HOME 
    echo "$VAR_PATH"
    ls "$VAR_PATH"

#writing a file in Home / pwd / file_path directory

    cd $pwd
    echo "text for file in home dir" > file.txt 
    cat file.txt

# touch example

    touch touch_file.txt 
    rm touch_example.txt 
    ls


# create a symbolic link
 ln -s file.txt link1
 ls

 echo "this is written inside link1" > link1 
 cat link1 
 
# chmod make executable (+/-x)/ writeable (+w)/ non-writeable (-w)
 chmod -x file.txt 

# change ownership of files using chown

    sudo chown ram file.txt 
    sudo chgrp ram file.txt

#create a variable, touch a file, use the variable to append to it

    VAR="text for a sample file"
    touch sample.txt
    echo "$VAR" >> sample.txt 
    cat sample.txt 


# arthematic using let command
 let a=3 b=7 c=a+b
 echo "$c"
 
# four arthematic operation

 numa=30
 numb=20

 expr $numa + $numb
 expr $numa - $numb
 expr $numa \* $numb
 expr $numa / $numb



#increment / decrement a varaiable

    VAR=5
    echo "$VAR"

    VAR=$((VAR+=1))
    echo "$VAR"

    VAR=$((VAR+=1))
    echo "$VAR" 

    VAR=$((VAR+=1))
    echo "$VAR"
# modulus / remainder operation 

    num1=11
    num2=2
    echo "$(($num1  num2))"
# exponent / power

    var=$((8**2))
    echo "$var"


# assign a variable to another variable

    num1=100
    VAR=$((num1+10))
    echo " $VAR"

# joining two lines using variables 
    var1="hello world"
    var2="added new second line using variable"
    var3="${var1} ${var2}"
    echo "$var3"



cover

