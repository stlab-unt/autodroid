#!/bin/bash

# get process for package name

PACKAGENAME=$1

PATH="$HOME/local/bin:$2/tools:$2/platform-tools:$PATH"

adb shell pidof -s $PACKAGENAME


