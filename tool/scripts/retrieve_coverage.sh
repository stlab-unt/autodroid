#!/bin/bash

# retrieve_coverage - a shell script to retrieve a coverage.ec file from the android device, rename the coverage file and then remove if from the device

DEVICEPATH=$1
COVERAGEPATH=$2
COVERAGENAME=$3
PATH="$HOME/local/bin:$4/tools:$4/platform-tools:$PATH"

adb shell am broadcast -a com.davidadamojr.tester.finishtesting && \
sleep 2 && \
adb pull $DEVICEPATH $COVERAGEPATH && \
mv $COVERAGEPATH'coverage.ec' $COVERAGEPATH$COVERAGENAME && \
adb shell rm $DEVICEPATH
