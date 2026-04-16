#!/bin/bash

if [ ! -d "/Volumes/rabbit" ]; then
    echo "rabbit is not connected. Exiting."
    exit 1
fi

sudo rsync -avh --delete --no-owner --no-group \
  --exclude=".DS_Store" \
  --exclude="Library/" \
  "/Users/kevin/" \
  "/Volumes/rabbit/home/"

date > /Volumes/rabbit/.lastran-$(basename "$0" .sh)
date > /Users/kevin/.lastran-$(basename "$0" .sh)
