#!/bin/sh

for pro in famc-legacy famc-ops famc-qa famc-dev famc-prod famc-imaging-prod
do
  gimme-aws-creds --profile $pro
  aws s3 ls --profile $pro | grep log
done
