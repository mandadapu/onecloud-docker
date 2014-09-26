sudo docker pull centos
sudo docker run -t -i centos:latest /bin/bash

yum install wget vim initscripts
yum install http://dl.fedoraproject.org/pub/epel/beta/7/x86_64/epel-release-7-0.2.noarch.rpm
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
yum install java-1.6.0-openjdk
yum install jenkins
chkconfig jenkins on
/etc/init.d/jenkins start