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

alias osnippets='j snippets; code snippets.css snippets.js'

alias docker_exec="echo 'docker exec -it <id_contenedor> /bin/bash'"

alias zm_exec="docker-compose exec api bundle exec"


alias list_node_modules="find . -name "node_modules" -type d -prune | xargs du -chs"
alias delete_node_modules="find . -name "node_modules" -type d -prune -exec rm -rf '{}' +"

alias ba=". env/bin/activate"
alias rs="python3 manage.py runserver"

alias gr="yarn clean && yarn build && yarn start"