#!/bin/bash


for i in famc-dev famc-qa famc-prod famc-legacy famc-ops
do
  echo $i
  gimme-aws-creds --profile $i
  for y in `aws ec2 describe-subnets --profile $i --region us-east-1 --query Subnets[].SubnetId --output text`
  do
    echo "$i	$y"
    aws ec2 describe-instances --filters Name=subnet-id,Values=$y --profile $i --region us-east-1 --query 'Reservations[].Instances[].Tags[?Key==`Name`].Value[] | []'
  done
done


for i in `aws ec2 describe-instances --profile famc-legacy --region us-east-1  | jq .Reservations[].Instances[].NetworkInterfaces[].SubnetId | sort -u | sed 's/\"//g'`
do
    echo $i
    aws ec2 describe-instances --profile famc-legacy --region us-east-1 --query 'Reservations[*].Instances[].Tags[?Key==`Name`].Value' --filters Name=subnet-id,Values=$i  --output text
done
