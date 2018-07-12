# mesh-services
scripts to setup, install, and run services, perhaps on a mesh

## Etherpad
To install etherpad on any given Debian or Ubuntu machine, run the following
```
git clone https://github.com/paidforby/mesh-services
cd mesh-services/etherpad
ssh root@[ip-etherpad-server] 'bash -s' < create-install-etherpad.sh
```
