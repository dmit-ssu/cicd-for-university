#! /bin/bash

ABSOLUTE_FILENAME=`readlink -e "$0"`
DIRECTORY=`dirname "$ABSOLUTE_FILENAME"`

sudo mkdir /opt/cicdfuslave
sudo cp -rp $DIRECTORY/slaveservice/run.sh /opt/cicdfuslave
sudo chmod +x /opt/cicdfuslave/run.sh

sudo cp -rp $DIRECTORY/slaveservice/cicdfuslave /etc/init.d/
sudo chmod +x /etc/init.d/cicdfuslave

