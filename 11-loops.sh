#!/bin/bash

#all args are in $@
for i in $@
do
  yum instal $i -y
done