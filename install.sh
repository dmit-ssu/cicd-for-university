#! /bin/bash
sudo service jenkins stop

HOME_JENKINS=/var/lib/jenkins
ABSOLUTE_FILENAME=`readlink -e "$0"`
DIRECTORY=`dirname "$ABSOLUTE_FILENAME"` 
sudo mkdir $HOME_JENKINS/jobs
sudo cp -rp $DIRECTORY/common_jobs/* $HOME_JENKINS/jobs
sudo chown -R jenkins:jenkins $HOME_JENKINS/jobs/*
sudo chown -R jenkins:jenkins $HOME_JENKINS/jobs

wget -N -P $HOME_JENKINS/plugins http://updates.jenkins-ci.org/latest/greenballs.hpi
wget -N -P $HOME_JENKINS/plugins http://updates.jenkins-ci.org/latest/groovy-label-assignment.hpi
wget -N -P $HOME_JENKINS/plugins http://updates.jenkins-ci.org/latest/groovy.hpi
wget -N -P $HOME_JENKINS/plugins http://updates.jenkins-ci.org/latest/github.hpi
wget -N -P $HOME_JENKINS/plugins http://updates.jenkins-ci.org/latest/git-client.hpi
wget -N -P $HOME_JENKINS/plugins http://updates.jenkins-ci.org/latest/github-api.hpi
wget -N -P $HOME_JENKINS/plugins http://updates.jenkins-ci.org/latest/git.hpi
wget -N -P $HOME_JENKINS/plugins http://updates.jenkins-ci.org/latest/copyartifact.hpi
sudo chown -R jenkins:jenkins $HOME_JENKINS/plugins/*


sudo service jenkins start
