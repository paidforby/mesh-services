#!/bin/sh

$ETHERPAD_HOME = ~/local/etherpad

# Create bash profile and install NodeJS with NVM
touch ~/.bashrc
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
export NVM_DIR="$HOME/.nvm"
source ~/.bashrc
nvm install 7.10

# Clone, install, and run etherpad-lite
mkdir -p $ETHERPAD_HOME
cd $ETHERPAD_HOME
git clone git://github.com/ether/etherpad-lite.git 
cd etherpad-lite
bin/run.sh 

