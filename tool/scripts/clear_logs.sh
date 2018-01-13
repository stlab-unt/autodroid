#!/bin/bash

# clear adb logs from device

PATH="$HOME/local/bin:$1/tools:$1/platform-tools:$PATH"

adb logcat -c


