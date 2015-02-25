#!/bin/sh

echo topkek
wget -O slave.jar http://172.18.66.84:8080/jnlpJars/slave.jar
java -jar slave.jar -jnlpUrl http://172.18.66.84:8080/computer/slave2/slave-agent.jnlp & echo $! > /var/run/cicdfuslavejar.pid
