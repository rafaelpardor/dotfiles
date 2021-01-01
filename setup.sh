# Setup and backup file created by: @rafaelpardor
# delete bash and zsh historial
# /home/%USER/.mozilla/firefox/63y3sung.default-release/bookmarkbackups
# IP=$(/sbin/ip route | awk '/default/ { print $3 }')
# echo $IP
# cat /etc/*-release
# sudo lsof -i -P -n | grep LISTEN


##
# Color Variables
##
green='\e[32m'
blue='\e[34m'
clear='\e[0m'

# Conditional for ram swap in sudo mode 
function free_mem(){
  sudo su; sync; echo 1 > /proc/sys/vm/drop_caches
  exit
}

function check_system(){
  echo "free"
  free -h
  echo ""
  echo "uptime"
  uptime
  echo ""
  echo "tcp check"
  cat /proc/net/tcp | wc -l
  echo ""
  echo "system name"
  uname -r
}

# Delete delete mozilla bookmarks backups 
# function namenotdefined(){}

# function backup(){
  # backup safevaults
  # mozilla
  # .config?
# }

# function setup(){
  # ln -s bash zsh tmux 
  # download vim bundles zsh setup git
  # setup ssh
# }

function menu(){
  echo -ne "
  1) Check system
  "
  read a
  case $a in
    1) check_system; menu ;;
  esac
}

function main(){
  echo $USER
  free_mem
}

main

