#! /bin/bash

ABSOLUTE_FILENAME=`readlink -e "$0"`
DIRECTORY=`dirname "$ABSOLUTE_FILENAME"`

HOST_MASTER = $1
NAME_SLAVE = $2

sudo mkdir /opt/cicdfuslave
echo "echo topkek
wget -O slave.jar http://$HOST_MASTER:8080/jnlpJars/slave.jar
java -jar slave.jar -jnlpUrl http://$HOST_MASTER:8080//$NAME_SLAVE#_slave/slave-agent.jnlp &echo $! > /var/run/cicdfuslavejar.pid
"
sudo cp -rp $DIRECTORY/slaveservice/run.sh /opt/cicdfuslave
sudo chmod +x /opt/cicdfuslave/run.sh

sudo cp -rp $DIRECTORY/slaveservice/cicdfuslave /etc/init.d/
sudo chmod +x /etc/init.d/cicdfuslave

sudo service cicdfuslave start
