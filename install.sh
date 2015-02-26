#! /bin/bash
sudo service jenkins stop

HOME_JENKINS=/var/lib/jenkins
ABSOLUTE_FILENAME=`readlink -e "$0"`
DIRECTORY=`dirname "$ABSOLUTE_FILENAME"` 
sudo mkdir $HOME_JENKINS/jobs
sudo cp -rp $DIRECTORY/common_jobs/* $HOME_JENKINS/jobs
sudo chown -R jenkins:jenkins $HOME_JENKINS/jobs/*
sudo chown -R jenkins:jenkins $HOME_JENKINS/jobs

wget -P -N $HOME_JENKINS/plugins http://updates.jenkins-ci.org/latest/greenballs.hpi
wget -P -N $HOME_JENKINS/plugins http://updates.jenkins-ci.org/latest/groovy-label-assignment.hpi
wget -P -N $HOME_JENKINS/plugins http://updates.jenkins-ci.org/latest/groovy.hpi
wget -P -N $HOME_JENKINS/plugins http://updates.jenkins-ci.org/latest/github.hpi
wget -P -N $HOME_JENKINS/plugins http://updates.jenkins-ci.org/latest/git-client.hpi
wget -P -N $HOME_JENKINS/plugins http://updates.jenkins-ci.org/latest/github-api.hpi
wget -P -N $HOME_JENKINS/plugins http://updates.jenkins-ci.org/latest/git.hpi
wget -P -N $HOME_JENKINS/plugins http://updates.jenkins-ci.org/latest/copyartifact.hpi
sudo chown -R jenkins:jenkins $HOME_JENKINS/plugins/*


sudo service jenkins start
