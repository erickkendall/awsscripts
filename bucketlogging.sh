#!/bin/sh

for pro in famc-dev famc-qa famc-ops famc-legacy famc-prod famc-imaging-prod
do
  gimme-aws-creds --profile $pro 
  aws cloudtrail describe-trails --profile $pro --region us-east-1  --query trailList[].S3BucketName
done
