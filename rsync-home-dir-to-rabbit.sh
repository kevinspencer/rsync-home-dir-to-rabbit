#!/bin/bash

if [ ! -d "/Volumes/rabbit" ]; then
    echo "rabbit is not connected. Exiting."
    exit 1
fi

rsync -avh --delete -E \
  --exclude=".DS_Store" \
  --exclude="Library/" \
  "/Users/kevin/" \
  "/Volumes/rabbit/home/"

date > /Volumes/rabbit/.lastran-$(basename "$0" .sh)
