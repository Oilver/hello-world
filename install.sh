#!/bin/sh 

export JAVA_HOME=/usr/java/jdk1.8.0_92
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/jre 

sudo java -jar com.deng-1.0-SNAPSHOT.jar >/data/console.txt 2>&1 &