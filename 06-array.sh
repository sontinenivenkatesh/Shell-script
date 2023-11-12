#!/bin/bash

# this called array, instead of single value it can hold multiple vaqlues

persons=("ramesh" "suresh" "sachin")

echo "first person is: ${persons[0]}"
echo "all persons is: ${persons[@]}"