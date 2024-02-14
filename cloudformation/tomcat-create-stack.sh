#!/bin/bash

# ParameterValue='[par de claves propio]'
aws cloudformation create-stack --stack-name tomcat --template-body file://./ubuntu.yml
if [ $? -eq 0 ]; then
    aws cloudformation list-exports --query "Exports[?Name=='IpPublica'].Value"
fi