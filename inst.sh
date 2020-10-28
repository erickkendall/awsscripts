#!/bin/bash

for env in famc-ops famc-dev famc-prod famc-qa
do
  gimme-aws-creds --profile $env
  for i in `cat ~/p`
  do
    aws ec2 describe-instances --instance-ids $i --profile $env --region us-east-1 > /tmp/instances/$i.$env
  done
done
