#!/bin/bash
#Author: Cyprien
#Date: September 2020
#Description: The script below will delete all file with .log extension older than 14 days

echo "Below are the files that are 14 days old or more on our server:"

#find /var/log/ -name '*.log' -mtime +14 -exec rm -rf '{}' \;
find /var/log/ -mtime +14 -name "*.log"

function INPUT {
echo "Do you want to delete them? Please press y for yes or n for no "

read ANSWER

case $ANSWER in

        y)

#       when ready, replace the chmod below by delete or rm -f

        echo "$(find /var/log/ -mtime +14 -name "*.log" -exec rm -rf '{}' \;)Your files are now deleted."
        exit 0
        ;;
        n)

        echo "Those file that are 14 days old will not be deleted at the moment, Thank you."
        exit 0
        ;;
        *)
        echo "You did not answer by y or n, please re-enter your choice." && sleep 1 && INPUT
        exit 0
        ;;
esac
}
INPUT

