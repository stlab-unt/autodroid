# Autodroid Release-v1
This readme provides instructions on how to install and run the Autodroid tool for automatic generation of Android application test suites.

## Dependencies
Autodroid requires the following to be installed on your computer:
- Android SDK
- Appium v1.7.0
- Java 8

Autodroid has been tested on Ubuntu 16.04 and Android 5.0 emulators.

## Installation
- Install Android SDK
- Clone this repository with the command: 
```
git clone https://github.com/stlab-unt/autodroid
```
- Install appium by executing the "install_appium.sh" script.
- Define the ANDROID_HOME and JAVA_HOME environment variables. ANDROID_HOME should be the path to the Android SDK on your machine and JAVA_HOME should be the path to your installation of JDK.

## Configuration
The Autodroid configuration file is located in the "config" folder. The "configuration.json" file specifies the path to the AUT (Android APK). It is important to ensure that the ANDROID_HOME configuration parameter specifies the correct path to the Android SDK installed on your computer.

## Test Generation
Execute the "start_appium.sh" script. Then, launch an Android emulator (e.g. genymotion) with Android 4.4 or above.

Autodroid uses an event extraction cycle to incrementally construct and execute test cases for an Android application under test. Autodroid provides three test generation techniques (defined by the way it chooses which event to execute in each iteration of the event extraction cycle):
- **Random test generation:** generates test suites by random selection and execution of events. Use the following command to generate random tests for 1 hour: 
```
java -jar autodroid-v1.jar generate --algo random --time 1
```
- **Frequency-based test generation:** maintains a history of how many times each GUI event has been previously executed and always selects/executes an available event that has been previously executed the least number of times. Use the following command to generate a frequency-based test suites for 1 hour: 
```
java -jar autodroid-v1.jar generate --algo frequency --time 1
```
- **Combinatorial-based test generation:** generates test suites by selecting events that maximize coverage of n-way event combinations where n is a specified event combination strengths. Use the following command to generate combinatorial-based test suites of strength 2 for 1 hour: 
```
java -jar autodroid-v1.jar generate --algo combinatorial --strength 2 --time 1
```

Test cases, log files and coverage files are generated in the "testsuites" folder.
