#!/bin/sh

mkdir -p /var/www/html
cp /etc/vsftpd/vsftpd.conf /etc/vsftpd/vsftpd.conf.bak

yes "" | adduser ${FTP_USER} --disabled-password
echo "$FTP_USER:$FTP_PASS" | /usr/sbin/chpasswd &> /dev/null

chown -R $FTP_USER:$FTP_USER /var/www/html
chown -R $FTP_USER:$FTP_USER /home/$FTP_USER
chmod -f 777 /var/www/*
chmod -f 777 /var/www/html/*
echo $FTP_USER | tee -a /etc/vsftpd.userlist

/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf
