#!/bin/bash
GETCOM_FILE=sample-file.ged # file previously loaded from myheritage 
SERVER_NAME=sites-cf.mhcache.com
NEW_LOCATION=$PWD

grep $SERVER_NAME $GETCOM_FILE | cut -b 8- > urls.txt
for i in `cat urls.txt`; do wget `echo $i | tr -d '\r'`; done
sed -i -E "s#.*$SERVER_NAME.*/#2 FILE $NEW_LOCATION#" $GETCOM_FILE
