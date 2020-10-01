#!/bin/bash

for each in $1
do
    gimme-aws-creds --profile $each
    for bucket in `aws s3 ls  --profile $each | awk '{ print $3 }'`
    do
        val=`aws s3 ls s3://$bucket --summarize --profile famc-legacy --recursive  | tail -2 | sed '1{N;s/\n//;}'`
        echo "$each;$bucket;$val"
    done
done
