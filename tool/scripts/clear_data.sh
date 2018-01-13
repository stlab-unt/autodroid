#!/bin/bash

# clear SD card data
# $1 should be ANDROID_HOME

PATH="$1/tools:$1/platform-tools:$PATH"

adb shell rm -rf /mnt/sdcard/*


