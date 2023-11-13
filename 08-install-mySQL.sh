#!/bin/bash
# our progrgram goal is to instal mySQL

USERID=$(id -u)

if [ $USERID -ne 0 ]

then
   echo "error: please run this script with root access"

fi

yum install mySQL -y