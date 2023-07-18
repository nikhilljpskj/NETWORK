#! /usr/bin/bash

read -p "Enter the value of X:" X
read -p "Enter the value of Y:" Y

echo Sum :  
sum= expr $X + $Y

echo Difference : 
diff= expr  $X - $Y

echo Product :
prod= expr $X \* $Y

echo Quotient:
quot= expr $X / $Y

echo Remainder: 	
rem= expr $X % $Y
