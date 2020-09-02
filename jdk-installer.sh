#!/bin/sh

if [ -n "$1" ]
then
    JDK_HOME="$1"
else
    echo "ERROR: the first argument missing -- <java_home/bin/>"
    echo "Usage: ./jdk-installer.sh <java_home/bin/> <priority>"
fi

if [ -n "$2" ]
then
    PRIORITY="$2"
else
    echo "ERROR: the secend argument missing -- <priority>"
    echo "Usage: ./jdk-installer.sh <java_home/bin/> <priority>"
fi

for JAVA_CMD in $JAVA_HOME
do
    echo $JAVA_CMD
done
echo $JDK_HOME
echo $PRIORITY