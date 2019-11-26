function aws_s3_push() {
  aws s3 sync build/ s3://$1 --profile $2
}
function aws_cloudfront_create_invalidation() {
  aws cloudfront create-invalidation --distribution-id $1 --paths "/*" --profile $2
}

alias s3='echo "s3_push #1 #2 –> aws s3 sync build/ s3://#1 --profile #2"'
alias cloudfront='echo "cf_ci #1 #2 —> aws cloudfront create-invalidation --distribution-id #1 --paths \"/*\"" --profile #2'

alias cf_ci=aws_cloudfront_create_invalidation
alias s3_push=aws_s3_push
