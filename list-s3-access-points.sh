#!/bin/sh

pro=$1
reg=$2
acct=$3

for resource in `aws s3api list-buckets --profile famc-legacy --region us-east-1 --query Buckets[].Name --output text`
do
  echo $resource
  aws s3control list-access-points --bucket $resource --account-id $acct --profile $pro --region $reg
done
