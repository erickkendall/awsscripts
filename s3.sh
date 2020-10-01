#for i in 133 202 230 272 353 439
for i in 230
do
  echo $i
  for bucket in `aws s3 ls --profile $i | awk '{ print $3 }' | sort | grep -v cloudtrail | grep -v logs | grep -v splunk | grep -v obloan | grep -v log`
  do
    echo $bucket;
    aws s3 ls $bucket --recursive --profile $i | sort | tail -n 1 | cut -d ' ' -f1,2
  done
done
