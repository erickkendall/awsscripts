#!/bin/bash

for i in famc-dev famc-qa famc-prod famc-legacy famc-ops
do
  echo $i
  gimme-aws-creds --profile $i
  val=`aws guardduty list-detectors --profile $i --region us-east-1 --output text | awk '{ print $2 }'`
  aws guardduty create-sample-findings --detector-id $val --finding-types UnauthorizedAccess:EC2/TorClient UnauthorizedAccess:EC2/TorRelay --profile $i --region us-east-1
done
