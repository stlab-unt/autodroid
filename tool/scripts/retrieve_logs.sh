#!/bin/bash

# retrieve adb logs with level WARNING and above

LOGFILEPATH=$1
PROCESSID=$2

PATH="$HOME/local/bin:$3/tools:$3/platform-tools:$PATH"

if [ "$PROCESSID" = "-1" ]
then
    adb logcat -d *:W > $LOGFILEPATH
else
    adb logcat -d *:W | grep $PROCESSID > $LOGFILEPATH
fi


