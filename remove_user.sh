#!/bin/sh

for i in famc-dev famc-qa famc-prod famc-legacy famc-ops
do
  gimme-aws-creds --profile $i
#  aws iam delete-user --user-name testuser --profile $i 
#  aws iam list-users --profile $i --output table
	aws rds describe-db-instances --profile $i --region us-east-1 --query DBInstances[].DBInstanceIdentifier
done
