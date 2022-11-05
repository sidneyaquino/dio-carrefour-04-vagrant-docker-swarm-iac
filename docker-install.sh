#!/bin/bash

echo "==> Update and upgrade System..."
sudo apk update && sudo apk upgrade 

echo "==> Docker install..."
sudo apk add docker 

echo "==> Clean cache installs..."
sudo apk cache clean

echo "==> Add user $USER in the 'docker' group..."
sudo addgroup $USER docker

echo "==> Starting service..."
sudo rc-update add docker boot
sudo rc-service docker start
sleep .5    # Wait time to start service.