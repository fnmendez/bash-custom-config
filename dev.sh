alias c="clear"
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

alias dc="docker-compose"
alias dcu="docker-compose up"
alias dcd="docker-compose down"

alias ngrok="~/.ngrok2/ngrok"
