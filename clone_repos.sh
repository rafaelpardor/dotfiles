#!/bin/bash
# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

# install docker
# check for gh if is installed, hence snap
# create dirs, $HOME/repos/github.com/$gh_user/
for i in $(gh repo list --limit=58 | cut -f1)
do
  if [ -d "${i:13}" ] 
  then
    echo -e "${Yellow}[::]${Color_Off} Repo ${Red}${i:13}${Color_Off} already exist..."
  else
    echo -e "${Green}Cloning $i${Color_Off}"
    git clone git@github.com:$i.git # > gh repos patg
  fi
done

