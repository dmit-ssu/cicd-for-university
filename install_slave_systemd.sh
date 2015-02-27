#! /bin/bash

ABSOLUTE_FILENAME=`readlink -e "$0"`
DIRECTORY=`dirname "$ABSOLUTE_FILENAME"`

HOST_MASTER=$1
NAME_SLAVE=$2

sudo mkdir /opt/cicdfuslave
echo "wget -O slave.jar http://$HOST_MASTER:8080/jnlpJars/slave.jar
java -jar slave.jar -jnlpUrl http://$HOST_MASTER:8080/computer/$NAME_SLAVE"_slave"/slave-agent.jnlp &echo $! > /var/run/cicdfuslavejar.pid
" > /opt/cicdfuslave/run.sh
sudo chmod +x /opt/cicdfuslave/run.sh

sudo cp -rp $DIRECTORY/slaveservice/cicdfuslave /usr/lib/systemd/scripts/cicdfuslave
sudo chmod +x /usr/lib/systemd/scripts/cicdfuslave
sudo cp -rp $DIRECTORY/slaveservice/cicdfuslave.service /usr/lib/systemd/system/cicdfuslave.service


sudo systemctl enable cicdfuslave.service
sudo systemctl start cicdfuslave
