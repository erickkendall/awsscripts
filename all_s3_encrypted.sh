#!/bin/bash

for profile in famc-legacy famc-prod famc-dev famc-ops famc-qa
do
    gimme-aws-creds --profile $profile
    for bucket in `aws s3 ls  --profile $profile | awk '{ print $3 }'`
    do
        SSEAlgorithm=`aws s3api get-bucket-encryption --bucket $bucket  --profile $profile --query ServerSideEncryptionConfiguration.Rules[].ApplyServerSideEncryptionByDefault --output text`
	if [ "$SSEAlgorithm" != "AES256" ]
        then
          echo "$bucket is not encrypted in account $profile"
        fi
    done
done
