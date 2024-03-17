#!/bin/bash
#Author: Satyarth
#Variables
BASE_PATH = /home/satyarth/
DAYS = 10
DEPTH = 1
RUN = 0

#Check if teh base directory is present or not
if [ ! -d $BASE_PATH ]
then
    echo "Directory does not exist: $BASE_PATH"
    exit 1
fi

#Create archive folder if does not exist
if [ ! -d $BASE_PATH/archive]
then
    mkdir $BASE_PATH/archive
fi

#Find the files whose size is greater than 20 MB , compress them and archive in archive folder

for i in `find $BASE_PATH -maxdept $DEPTH -type f -size +20M`
do
    if [ $RUN -eq 0]
    then
        echo "[$(date"+%Y -m%m -%d %H:%M:%S")] archiving $i ==> $BASE_PATH/archive"
        gzip $i || exit 1
        mv $i.gz $BASE_PATH/archive || exit 1
    fi
done        