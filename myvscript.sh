#!/bin/bash

NODE_TYPE=$1 

#Common Process and Softwares
apt-get update 
apt-get install #PHP and all libraries  

# Set MySQL Password and Secure Installation


# Give user root permissions for master

if [ "NODE_TYPE" == "master"]; then
    #create user called altschool
    adduser altschool -gecos "First Last,RoomNumber, WorkPhone,Email" --disabled-password 
    # echo "altschool:password" | chpasswd
    usermod -aG sudo altschool


    #Setup  SSH Key Authtication
    sudo -u altschool ssh-keygen -t rsa -P -f ~/.ssh/id_rsa -N ""
    sudo -u ssh-copy-id vagrant@192.168.50.4

    # Script to create mnt/altschool
    sudo -u altschool mkdir /mnt/altschool
    #Data Transfer
    scp -r /mnt/altschool vagrant@192.168.50.4:/mnt/altschool/slave
    #process monitoring

elif [ "NODE_TYPE" == "slave"]; then

    # Script to create mnt/altschool/slave

    mkdir mnt/altschool/slave
    
fi






#LAMP 

