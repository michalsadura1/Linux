# Linux #
Linux tools
##########################
Creating service systemd

Copy file  check.service with service to folder /etc/systemd/system
cp check.service /etc/systemd/system
Copy file check.sh /home/x/systemd
cp check.sh /home/x/systemd 

start service
systemctl start check

stop service
systemctl stop check

enable
systemctl enable check

disable
systemctl disable check

############################
Redirect oputput of systemd service to file
Creating log file

Add this section to file check.service 

section [Service]
StandardOutput=syslog
StandardError=syslog
SyslogIdentifier=check

copy file check.conf to /etc/rsyslog.d
cp check.conf /etc/rsyslog.d

stop service
systemctl stop check

restart syslog
systemctl restart rsyslog

start service
systemctl start check

if thereare trouble
check change permission
chown syslog:adm /var/log/check.log
check if ile is created and file is appending
tail -f var/log/check.log
#########################################
