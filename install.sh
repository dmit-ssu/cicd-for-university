#! /bin/bash
sudo service jenkins stop

HOME_JENKINS=/var/lib/jenkins
ABSOLUTE_FILENAME=`readlink -e "$0"`
DIRECTORY=`dirname "$ABSOLUTE_FILENAME"` 
sudo mkdir $HOME_JENKINS/jobs
sudo cp -rp $DIRECTORY/common_jobs/* $HOME_JENKINS/jobs
sudo chown -R jenkins:jenkins $HOME_JENKINS/jobs/*
sudo chown -R jenkins:jenkins $HOME_JENKINS/jobs

sudo service jenkins start
