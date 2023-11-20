#!/bin/bash

DATE=(DATE +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME.$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

validate(){
#$1 -- it will receive the arguments
#$2 -- it will show the result of argument

if [ $1 -ne 0 ]

then
    echo -e "$2 ....  $R failur $N"
    exit 1

else
   echo -e "$2 ....  $G success $N"
fi

}

USERID=$(id -u)
# this function should validate the previous command and inform user it is success or not

if [ $USERID -ne 0 ]
 
then
   echo "please run this script with root access"
   exit 1
fi
   yum install mysql -y  &>>$LOGFILE

   validate $? "installing mysql"

   yum install postfix -y &>>$LOGFILE

   validate $? "installing postfix"