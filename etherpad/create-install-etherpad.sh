#!/bin/sh

set -x
set -e

DEBIAN_FRONTEND=noninteractive apt-get update

DEBIAN_FRONTEND=noninteractive apt-get install -yq --force-yes \
gzip \
git-core \
curl \
python \
build-essential \
abiword \
software-properties-common

# Create etherpad-lite user and switch to that user to actuall install
adduser --system --home=/opt/etherpad --group etherpad-lite

git clone https://github.com/paidforby/mesh-services /opt/mesh-services

su - etherpad-lite -s /opt/mesh-services/etherpad/install-run-etherpad.sh 
