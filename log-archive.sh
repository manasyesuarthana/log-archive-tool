#!/bin/bash

if [ -z $1 ]
then
    echo "Usage: $0 <file_name_to_archive>"
    exit 1
fi

FILE=$1
FILE_NAME=$( basename $1 )
DATE_AND_TIME=$( date "+%Y%m%d_%H%M%S" )

ARCHIVE_NAME=${FILE_NAME}_${DATE_AND_TIME}.tar.gz
DIR_NAME="/var/log"

#archive path = /var/log/<log_name>.tar.gz
ARCHIVE_PATH="${DIR_NAME}/${ARCHIVE_NAME}"

echo "Archiving $FILE_NAME..."

#error checking to see if the file or directory exists
if [ ! -e "$FILE" ]; then
    echo "File $FILE does not exist."
    exit 1
fi
#e.g.: tar -czvf /var/log/log.tar.gz -C /path/to/log log.txt
sudo tar -czvf "$ARCHIVE_PATH" -C "$(dirname "$FILE")" "$FILE_NAME"

sleep 1
echo "File saved in /var/log as $ARCHIVE_NAME"