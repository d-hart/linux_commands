#!/bin/zsh
#git remote show origin
#git remote set-url origin <url>
#git remote set-url --push origin <url>
#------------------------------------------------------------------------------------------------------------------------------#
# Package Managers
# rpm does not include all of the dependencies needed for the package to be downloaded
rpm -i telnet.rpm - Install packages
rpm -e telnet.rpm - Uninstall packages
rpm -q telnet.rpm - Query packages
rpm -qa | grep ftp - Query the exact package name

# yum uses rpm in order to download the packages and the dependencies
# yum uses the /etc/yum.repos.d file to store the location of the repositories
yum install ansible - Install packages
yum repolist - List a set of repositories
yum install https://some-repo-name.org/repo - Install a new repo onto the machine
yum list ansible - Search for and list a particular package name, version, installation status
yum remove ansible - Remove an installed package
yum -showduplicates list ansible - Show all available versions of a package
yum install ansible-2.4.2.0 - Install a specific version of a package

#------------------------------------------------------------------------------------------------------------------------------#