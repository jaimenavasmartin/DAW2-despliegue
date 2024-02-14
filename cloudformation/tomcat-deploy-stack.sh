#!/bin/bash
aws cloudformation deploy --stack-name tomcat --template-file ubuntu.yml --capabilities CAPABILITY_IAM
if [ $? -eq 0 ]; then
    aws cloudformation list-exports \
        --query "Exports[?Name=='IPaddress'].Value"
fi