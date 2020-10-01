for i in 133 202 230 272 353 439
do
  echo $i
  aws lambda list-functions --profile $i --region us-east-1  | grep "FunctionArn" | awk '{ print $2 }'

done
