#!/bin/bash
# our progrgram goal is to instal mySQL

USERID=$(id -u)

if [ $userid -ne o ]

then
   echo "error: please run this script with root access"

exit 1

fi