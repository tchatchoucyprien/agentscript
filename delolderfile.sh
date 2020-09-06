#!/bin/bash
#Author: Cyprien
#Date: September 2020
#Description: The script below will chmod all file with .log extension older than 14 days


echo "Below are the files that are 14 days old or more on our server:"

find /var/log/ -mtime +14 -name "*.log"

echo " Do you want to delete them? Please press y for yes or n for no "

read ANSWER


function INPUT {

case $ANSWER in

        y)

#       when ready, replace the chmod below by delete or rm -f

        echo "$(find /var/log/ -mtime +14 -name "*.log" -exec chmod +x '{}' \;)Your files are now deleted."
        ;;
        n)

        echo "Those file that are 14 days old will not be deleted at the moment, Thank you."
        ;;
        *)
        echo "You did not answer by y or n, please re-enter your choice."
        exit
        ;;
esac
}
#while [ $ANSWER = y ] || [ $ANSWER = n ]


#do

INPUT

#done

#read ANSWER
#INPUT

#       echo "You did not answer by y or n, please re-enter your choice. y for yes or n for no"
#read ANSWER

#while [ $ANSWER != "y"  ] || [ $ANSWER != "n" ]

#do
#       echo " Please enter y for y or n for no"
#read ANSWER

#INPUT
#done
#exit
#fi

~

