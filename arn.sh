# arn:partition:service:region:account-id:resource-id
# arn:partition:service:region:account-id:resource-type/resource-id
# arn:partition:service:region:account-id:resource-type:resource-id


# arn:aws:iam::123456789012:user/Development/product_1234/*

# arn:aws:s3:::my_corporate_bucket/*
# arn:aws:s3:::my_corporate_bucket/Development/*

account=$1
service=$2


# aws service list-buckets --profile famc-legacy --region us-east-1 --query Buckets[].Name --output text

declare -A MYMAP 


