# cicdfu
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

Installation
============
Clone our project and run `sh common_jobs_install.sh` (assuming you have jenkins already installed)

Configure your slave so it will be able to run desired `common_job` and connect it to jenkins. Slaves have to have a `$name$_slave` as their names.

Slave service is now available as an init.d (run `sh slave_install.sh`). But you can connect in any way you want.


Get started
===========

Just copy `main_project` or `main_group_project` and build with url to your git repo and name of slave you will be using. Wait for it and get your collected artifacts.

For group builds each student entry in the list has to be in `Student Name http:\\linkto.git` format. Artifacts will have student names as .tar filenames.

Contribute
==========
Feel free to contribute to this project! Some common jobs and fixes to project jobs will be highly appreciated.

This project was made during Grid Dynamics Student winter practice of 2015 by Michael devMauris Ponomarev and Kristina krismal95 Polulyah
