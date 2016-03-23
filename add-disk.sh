#!/bin/bash 
#Author by HenryWen
#This script used for add new disk on machine and /etc/fstab,the script suitable for linux
#Firstly, you have to install xfs relative pkgs

a=1;  #assume new disk label from 1 you can customize #assume new disk label from 1 you can custom it it
for i in {b..y};
do 
echo " n 
p 
1   


w"|fdisk /dev/xvd${i} ;
mkfs.xfs /dev/xvd${i}1;
xfs_admin -L "Data_Vol${a}" /dev/xvd${i}1; 
echo " 'LABEL=Data_Vol${a}      /data${i}                   xfs     defaults        0 0 ' >>/etc/fstab"
a+=1;
done 
