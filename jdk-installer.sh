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

echo "JDK HOME is : " $JDK_HOME
echo "PRIORITY is : " $PRIORITY

for JAVA_CMD in $JDK_HOME/*
do
	update-alternatives --install /usr/bin/${JAVA_CMD##/*/} ${JAVA_CMD##/*/} $JAVA_CMD $PRIORITY
done
