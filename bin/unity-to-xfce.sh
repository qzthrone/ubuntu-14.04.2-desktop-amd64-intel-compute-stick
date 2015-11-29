#!/bin/sh

## Open terminal window with ctrl-alt-F1
# sudo su -
if [ "`whoami`" != "root" ]; then
	echo "ERROR: please sudo $0"
	exit 1
fi
apt-get update


## Remove desktop packages
apt-get -y install xubuntu-desktop


## Remove compiz
apt-get -y remove compiz
apt-get -y autoremove
#aptitude -y purge '~c'


# Reboot to finish
echo "$0: You can now 'reboot'"

