alias c="clear"
alias python="python2"
alias py="python3"
alias ip="
ifconfig |
grep '.*\binet[^6]\b.*'
"
# |
# tail -n1 |
# cut -d' ' -f2 |
# tr -d '\n' |
# pbcopy |
# echo 'Your IP has been copied into your clipboard!'
# "

alias rei="
  echo 'Removing package-lock.json...'; rm package-lock.json;
  echo 'Removing node_modules...'; rm -r node_modules;
  echo 'Installing dependencies with npm...'; npm i"
alias reyarn="
  echo 'Removing yarn.lock file...'; rm yarn.lock;
  echo 'Removing node_modules folder...'; rm -rf node_modules;
  echo 'Installing dependencies with yarn...'; yarn install"
alias ndev="npm run dev"
alias y="yarn"
alias yad="yarn add"
alias yadev="yarn add -D"

alias _emulator="$ANDROID_SDK_ROOT/emulator/emulator"
alias fdc="
cd node_modules/react-native/scripts &&
./ios-install-third-party.sh &&
cd ../../../;
cd node_modules/react-native/third-party/glog-0.3.5/ &&
../../scripts/ios-configure-glog.sh &&
cd ../../../../"

alias dc="docker compose"
alias dcb="docker compose build"
function docker_compose_up() {
  docker compose up -d
}
alias dcu=docker_compose_up
alias dcd="docker compose down"
alias dce="docker compose exec api"

alias ngrok="~/.ngrok2/ngrok"

function kill_process_on_port() {
  lsof -t -i tcp:$1 | xargs kill
}
alias killport=kill_process_on_port

alias recfw="(rm webpack.config.js || true) && yarn build:config && yarn build && yarn deploy:staging && yarn tail:staging"