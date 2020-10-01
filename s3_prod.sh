gimme-aws-creds --profile famc-prod
aws s3 ls --profile famc-prod --recursive s3://famc-prod-docker-backup  --summarize | tail -2 | sed '1{N;s/\n//;}'
gimme-aws-creds --profile famc-prod
aws s3 ls --profile famc-prod --recursive s3://famc-prod-docker-registry  --summarize | tail -2 | sed '1{N;s/\n//;}'
gimme-aws-creds --profile famc-prod
aws s3 ls --profile famc-prod --recursive s3://famc-prod-s3-logs  --summarize | tail -2 | sed '1{N;s/\n//;}'
gimme-aws-creds --profile famc-prod
aws s3 ls --profile famc-prod --recursive s3://famc-prodcloudtrail  --summarize | tail -2 | sed '1{N;s/\n//;}'
gimme-aws-creds --profile famc-prod
aws s3 ls --profile famc-prod --recursive s3://famc-purchase-advice-storage-prod  --summarize | tail -2 | sed '1{N;s/\n//;}'
gimme-aws-creds --profile famc-prod
aws s3 ls --profile famc-prod --recursive s3://famc-purchase-advice-webui-prod  --summarize | tail -2 | sed '1{N;s/\n//;}'
gimme-aws-creds --profile famc-prod
aws s3 ls --profile famc-prod --recursive s3://lambda-backup-famc-prod-11072019  --summarize | tail -2 | sed '1{N;s/\n//;}'
gimme-aws-creds --profile famc-prod
aws s3 ls --profile famc-prod --recursive s3://obloan2015  --summarize | tail -2 | sed '1{N;s/\n//;}'
gimme-aws-creds --profile famc-prod
aws s3 ls --profile famc-prod --recursive s3://sgw-obloan  --summarize | tail -2 | sed '1{N;s/\n//;}'
gimme-aws-creds --profile famc-prod
aws s3 ls --profile famc-prod --recursive s3://sgw-obloan2015  --summarize | tail -2 | sed '1{N;s/\n//;}'
gimme-aws-creds --profile famc-prod
aws s3 ls --profile famc-prod --recursive s3://sgw-obloan2016  --summarize | tail -2 | sed '1{N;s/\n//;}'
gimme-aws-creds --profile famc-prod
aws s3 ls --profile famc-prod --recursive s3://fabric-pool-59a2a1d2-ec45-11e8-a572-ad7bdded0d4f  --summarize | tail -2 | sed '1{N;s/\n//;}'
