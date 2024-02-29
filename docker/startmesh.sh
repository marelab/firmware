#!/usr/bin/env bash
cp /home/mesh/meshtasticd_linux_$(arch) /home/mesh/dockerhost/
cd /home/mesh/dockerhost

RUNDIR=$(pwd)
export HOME=$RUNDIR
echo $RUNDIR
#source .
cd $HOME
#sh -cx "$HOME/meshtasticd_linux_$(arch) --hwid '${HWID:-$RANDOM}'"
#docker run -it -p 8080:9001 -v ~/meshmnt:/home/mesh/dockerhost meshtastic bash
while true; do
	echo "1.Start Meshtastic with Lora Simulator"
	echo "2.Start Meshtastic with real Lora Device"
	echo "3.Stop scriting and exit."
	echo "Please choose option:"

	read option

	case $option in
	1)
		sh -cx "$HOME/meshtasticd_linux_$(arch) --hwid '${HWID:-$RANDOM}'--config '$HOME/config.yaml'"
		;;
	2)
		sh -cx "$HOME/meshtasticd_linux_$(arch) --hwid '${HWID:-$RANDOM}' --config '$HOME/config.yaml'"
		;;
	3)
		echo "Beende das Skript..."
		exit
		;;
	*)
		echo "Ungültige Option gewählt. Bitte versuche es erneut."
		;;
	esac
done
