#!/bin/sh

# Create bash profile and install NodeJS with NVM
touch ~/.bashrc
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install 7.10

# Clone, install, and run etherpad-lite
mkdir -p ~/local/etherpad
git clone git://github.com/ether/etherpad-lite.git ~/local/etherpad
cd ~/local/etherpad/
bin/run.sh 

