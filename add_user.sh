#!/bin/bash

#	SCRIPT TO ADD NEW USER

echo "PROCESS STARTED:$0"
echo "HERE IS NAME OF NEW USER:$1"

#	ADDING USER

adduser --home /$1 $1

