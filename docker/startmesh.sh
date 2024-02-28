#!/usr/bin/env bash
cp /home/mesh/meshtasticd_linux_$(arch) /home/mesh/dockerhost/
cd /home/mesh/dockerhost

RUNDIR=$(pwd)
#echo $RUNDIR
source export HOME=$RUNDIR
cd $HOME
sh -cx "$HOME/meshtasticd_linux_$(arch) --hwid '${HWID:-$RANDOM}'"
#docker run -it -p 8080:9001 -v ~/meshmnt:/home/mesh/dockerhost meshtastic bash
