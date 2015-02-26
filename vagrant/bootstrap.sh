#! /bin/bash

sudo yum install -y wget
sudo yum install -y git
sudo yum install -y nmap
#install jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install -y jenkins
sudo yum remove java
sudo yum install -y java-1.6.0-openjdk
sudo service jenkins start
#add ports for the Web interface Jenkins
sudo service iptables start
sudo iptables -I INPUT 1 -p tcp --dport 8443 -j ACCEPT
sudo iptables -I INPUT 1 -p tcp --dport 8080 -j ACCEPT
sudo iptables -I INPUT 1 -p tcp --dport 443 -j ACCEPT
sudo iptables -I INPUT 1 -p tcp --dport 80 -j ACCEPT

#clone repo with project cicd for university
git clone https://github.com/dmit-ssu/cicd-for-university.git
./cicd-for-university/install.sh
