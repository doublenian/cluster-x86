#!/bin/bash
#####for remote control##########
ssh-keygen -t rsa

ssh-copy-id  root@115.28.5.188

cp launch-reverse-ssh-tunneling.sh /home/`hostname`/

cp troy_networkDetect /home/`hostname`/

crontab -e
