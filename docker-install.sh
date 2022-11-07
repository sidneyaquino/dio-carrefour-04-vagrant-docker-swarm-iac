#!/bin/bash

echo "==> Update and docker install / clean cache..."
sudo apk add docker --update-cache && sudo apk cache clean  # rm -rf /var/cache/apk/*

echo "==> Add user $USER in the 'docker' group..."
sudo addgroup $USER docker

echo "==> Starting service..."
sudo rc-update add docker boot
sudo rc-service docker start
sleep .25   # Wait time to start service.