# cicd-for-university
CICD for university provides easy building for user defined projects or group builds. These can be used for individual projects (student and/or teacher projects) as well as building common tasks for programming related courses.

Recent changes
==============
0.1 is released
---------------
* core scripts for single and group projects are ready
* sample common jobs
* sample init.d service

How it works
============

cicdfu is a collection of jobs for Jenkins server (http://jenkins-ci.org/).

Building a project job will clean the workspace and trigger build of common_job which can be specified as a parameter i.e. for building java project just type "java" as common job.

All the builds will collect the results as .tar files.

Initial claims
==============
To install jenkins Vagtant must be set:
---------------------------------------
 * virtualbox
 * vagrant
 * virtualbox-dkms
 
To install master must be set:
-------------------------------
 * java
 * jenkins
 * wget
 
To install slave must be set:
-------------------------------
 * wget
 * java-1.6.0-openjdk

Installation Jenkins Vagrant
============================
Clone our project.
Before installation you need to install box. We suggest  `https://a7240500425256e5d77a-9064bd741f55664f44e550bdad2949f9.ssl.cf5.rackcdn.com/govready-centos-6.5-x86_64-noX-0.2.1-server-0.8.1.box` (vagrant box add Centos6.5 url)
Go in a folder vagrant. Run vagrant.

Installation 
============
Clone our project and run `install.sh` (assuming you have jenkins already installed)

Configure your slave so it will be able to run desired `common_job` and connect it to jenkins. Slaves have to have a `$name$_slave` as their names.

Slave service is now available as an init.d (run `sh slave_install.sh ip_HOST_MASTER NAME_SLAVE`). But you can connect in any way you want. 

Get started
===========

Just copy `main_project` or `main_group_project` and build with url to your git repo and name of slave you will be using. Wait for it and get your collected artifacts.

For group builds each student entry in the list has to be in `Student Name http:\\linkto.git` format. Artifacts will have student names as .tar filenames.

Contribute
==========
Feel free to contribute to this project! Some common jobs and fixes to project jobs will be highly appreciated.

This project was made during Grid Dynamics Student winter practice of 2015 by Michael devMauris Ponomarev and Kristina krismal95 Polulyah
