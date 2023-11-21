#!/bin/bash

DATE=$( date +%F )
LOGSDIR=/home/centos/shellscript-logs
#this location of log files
SCRIPT_NAME=$0
LOGFILE=$LOGSDIR/$0-$date.log
USERID=$( id -u );
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $user -ne 0 ];
then
     echo -e "$R ERROR: please run this script with root access $N"
     exit 1
fi

validate(){
   if [ $1 -ne 0 ];
   then
        echo -e "installing $2 ... $R FAILURE $N"
        exit 1
   else 
        echo -e "installing $2 ... $G success $N"
   fi
}


#all args are in $@
for i in $@
do
    yum list installed $i -y &>>$LOGFILE
    if [ $? -ne 0 ];
    then
         echo "$i is not installed, let's install it" 
         yum install $i -y &>>$LOGFILE
         validate $? "$i"
    else
        echo -e "$Y $i is already installed $N"
    fi
done
