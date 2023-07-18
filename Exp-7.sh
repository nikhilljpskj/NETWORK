#!/bin/bash
getFile()
{
    # Reading txtFileName to convert it's content
    echo -n "Enter File Name:"
    read filename
    # Checking if file exist
    if [ ! -f $filename ]; then
        echo "File Name $filename does not exists."
        exit 1
    fi
}
  echo "1. Uppercase to Lowercase "
  echo "2. Count the number of characters,words,lines"
  echo "3. Exit "
  echo -n "Enter your Choice(1-3):"
  read ch

  case "$ch" in
    1) 
      # Function Call to get File 
      getFile    
      # Converting to lower case if user choose 1     
      echo "Converting Upper-case to Lower-Case "
      tr '[A-Z]' '[a-z]' <$filename
    ;;

   2) 
    echo Enter the filename
    read file
    c=`cat $file | wc -c`
    w=`cat $file | wc -w`
    l=`grep -c "." $file`
    echo Number of characters in $file is $c
    echo Number of words in $file is $w
    echo Number of lines in $file is $l
    ;;

    *) # exiting for all other cases
        echo "Exiting..."
        exit
    ;;
  esac

