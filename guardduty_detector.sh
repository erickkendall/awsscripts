#!/bin/bash

for i in famc-dev famc-qa famc-prod famc-legacy famc-ops
do
  echo $i
  gimme-aws-creds --profile $i
  aws guardduty list-detectors --profile $i --region us-east-1 --output text
done
