#!/bin/bash

for each in famc-legacy famc-prod famc-dev famc-ops famc-imaging-prod famc-qa
do
    gimme-aws-creds --profile $each
    for bucket in `aws s3 ls  --profile famc-legacy | awk '{ print $3 }'`
    do
        total=`aws s3 ls  --profile famc-legacy s3://$bucket --recursive | awk '{ sum += $3 } END { print sum } '`
        echo "$each;$bucket;$total"
    done
done
