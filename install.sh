#!/bin/sh 

export JAVA_HOME=/usr/java/jdk1.8.0_92
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/jre 


echo "start to cp zip"

cp -rf /home/MSDOMAIN1/msdeployqa/kafka-producer/target/kafka-producer-package.zip   /data/

echo "finished copy zip. start to rm target folder /kafka-producer-package"

cd /data/

rm -rf kafka-producer-package
echo "rm target foler /kafka-producer-package successfully. start to unzip"

unzip  -n -d /data/kafka-producer-package kafka-producer-package.zip
rm -rf kafka-producer-package.zip

echo "finished unzip. start to init ProducesQuartz"
#cp -rf install.sh kafka-producer-package/bin

cd /data/kafka-producer-package/bin/


java -Xmx2g -Xms2g -Xmn1g -classpath kafka-producer.jar com.morningstar.kafkaproducer.producer.ProducerQuartz >/data/kafka-producer-package/console.txt 2>&1 &

echo "ini Producer Successflsly."


