#!/bin/sh

for i in famc-prod famc-legacy famc-qa famc-dev famc-ops
do
	gimme-aws-creds --profile $i
	echo $i >> /tmp/log
 	aws ec2 describe-instances --filters Name=tag-key,Values=Name  --query 'Reservations[*].Instances[*].{Instance:InstanceId,AZ:Placement.AvailabilityZone,Name:Tags[?Key==`Name`]|[0].Value}' --profile $i --region us-east-1  --output table >>/tmp/log
done

