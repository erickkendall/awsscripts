for i in 133 202 230 272 353 439
do
  echo $i
  for bucket in `aws s3 ls --profile $i | awk '{ print $3 }' | sort | grep -v cloudtrail | grep -v logs | grep -v splunk`
  do
	echo $bucket
	aws s3api list-objects --bucket $bucket --output json --query "[sum(Contents[].Size), length(Contents[])]" --profile $i --region us-east-1

  done
done
