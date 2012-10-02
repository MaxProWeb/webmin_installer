#!/bin/bash
apt-get update
apt-get upgrade
apt-get install -y libnet-ssleay-perl libauthen-pam-perl libio-pty-perl apt-show-versions libapt-pkg-perl
cd /root
wget http://www.webmin.com/jcameron-key.asc
apt-key add jcameron-key.asc

echo '
deb http://download.webmin.com/download/repository sarge contrib
deb http://webmin.mirror.somersettechsolutions.co.uk/repository sarge contrib
' >> /etc/apt/sources.list;

apt-get update
apt-get install webmin

