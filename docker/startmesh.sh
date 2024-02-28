#!/usr/bin/env bash
RUNDIR=$(pwd)
#echo $RUNDIR
source export HOME=$RUNDIR
sh -cx "~/meshtasticd_linux_$(arch) --hwid '${HWID:-$RANDOM}'"
#docker run -it -p 8080:9001 -v ~/meshmnt:/home/mesh/dockerhost meshtastic bash
