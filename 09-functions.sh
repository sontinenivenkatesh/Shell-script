#!/bin/bash

DATE=(DATE +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME.$DATE.log

validate(){
#$1 -- it will receive the arguments
#$2 -- it will show the result of argument

if [ $1 -ne 0 ]

then
    echo "$2 .... failur"
    exit 1

else
   echo "$2 .... success"
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