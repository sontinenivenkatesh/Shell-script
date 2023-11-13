#!/bin/bash

# this function should validate the previous command and inform user it is success or not

validate(){
#$1 -- it will receive the arguments
#$2 -- it will show the result of argument

if [ $1 -na 0 ]

then
    echo "$2 .... failur"
    exit 1

else
   echo "$2 .... success"
fi

}

if [ $USERID -na 0 ]
 
then
   echo "please run this script with root access"
   exit 1
fi
   yum install mysql -y

   validate $? "installing mysql"

   yum install postpix -y

   validate $? "installing postfix"