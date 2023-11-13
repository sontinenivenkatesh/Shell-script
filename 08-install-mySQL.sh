#!/bin/bash
# our progrgram goal is to instal mySQL

USERID=$(id -u)

if [ $USERID -ne 0 ]

then
   echo "error: please run this script with root access"
   exit 1
fi

yum install mysql -y

if [ $? -ne 0 ]

then
   echo "installation of mysql is error"
   exit 1

else
   echo "installation of mysql is success"
fi

yum install postfix -y

if [ $? -ne 0 ]

then
   echo "installation of mostfix is error"
   exit 1

else
   echo "installation of mostfix is success"
fi