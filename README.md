# Meshtastic Firmware

![GitHub release downloads](https://img.shields.io/github/downloads/meshtastic/firmware/total)
[![CI](https://img.shields.io/github/actions/workflow/status/meshtastic/firmware/main_matrix.yml?branch=master&label=actions&logo=github&color=yellow)](https://github.com/meshtastic/firmware/actions/workflows/ci.yml)
[![CLA assistant](https://cla-assistant.io/readme/badge/meshtastic/firmware)](https://cla-assistant.io/meshtastic/firmware)
[![Fiscal Contributors](https://opencollective.com/meshtastic/tiers/badge.svg?label=Fiscal%20Contributors&color=deeppink)](https://opencollective.com/meshtastic/)
[![Vercel](https://img.shields.io/static/v1?label=Powered%20by&message=Vercel&style=flat&logo=vercel&color=000000)](https://vercel.com?utm_source=meshtastic&utm_campaign=oss)

## Overview

Developer Branch for setting up Docker Containers under Linux for meshtastic

Build
docker build -v /mnt/mesh:/mnt/dockerhost -t meshtastic -f Dockerfile-LinuxBuildRun .
docker build --no-cache -v /mnt/mesh:/mnt/dockerhost -t meshtastic -f Dockerfile-LinuxBuildRun .

RUN
docker run -it -p 8080:9001 meshtastic bash
docker run -it -p 8080:9001 meshtastic ./meshtasticd_linux_x86_64
docker run -it -p 8080:9001 meshtastic ./meshtasticd_linux_aarch64
DOCKER HOST PATH -> DOCKER VM PATH
docker run -it -p 8080:9001 -v /mnt/mesh:/mnt/dockerhost meshtastic bash

docker build -v /mnt/mesh:/home/mesh/dockerhost -t meshtastic -f Dockerfile-LinuxBuildRun .

docker run -it -p 8080:9001 -v $(pwd)/meshmnt:/home/mesh/dockerhost meshtastic bash
