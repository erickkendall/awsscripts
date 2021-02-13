#!/bin/sh

pro=$1
reg=$2

for resource in accesspoints jobs storage-lenss
do
  aws s3 describe-$resource --profile $pro --region $2
done
