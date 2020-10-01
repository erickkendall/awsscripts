for each in `aws lambda list-functions --profile 272 --region us-east-1  --query 'Functions[*].[FunctionName]' --output text`
do
  echo $each
done
