#!/bin/bash
#login to aws using putty without private key..
#sudo bash

sed -i 's@#PermitRootLogin[[:space:]]prohibit-password@PermitRootLogin yes@g' /etc/ssh/sshd_config

sed -i 's@PasswordAuthentication[[:space:]]no@PasswordAuthentication yes@g' /etc/ssh/sshd_config

service ssh restart
passwd root
