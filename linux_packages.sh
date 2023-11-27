#!/bin/zsh
#git remote show origin
#git remote set-url origin <url>
#git remote set-url --push origin <url>
#------------------------------------------------------------------------------------------------------------------------------#
wget https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf > /home/thor/dummy.pdf #download a file to a location
cat /etc/*release* #check the version of linux running
rpm -i telnet.rpm #install package
rpm -e telnet.rpm #uninstall package
rpm -q telnet.rpm #query package
rpm -qa | grep ftp #get the exact package name
sudo rpm -i /opt/ftp-0.17-67.el7.x86_64.rpm #install ftp package from rpm
#------------------------------------------------------------------------------------------------------------------------------#

#------------------------------------------------------------------------------------------------------------------------------#
yum install ansible #install packages
ls /etc/yum.repos.d/ #location of the repository settings
yum repolist #output a list of files where the repos are configured
cat /etc/yum.repos.d/CentOS-Base.repo #output the urls of the location where packages are stored
yum list ansible #provides the package name and version in repo
yum remove ansible #removes packages
yum --showduplicates list ansible #show different versions of the package
yum install ansible-2.4.2.0 #download a specific version of the package
#------------------------------------------------------------------------------------------------------------------------------#