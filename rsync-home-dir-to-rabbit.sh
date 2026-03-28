#!/bin/bash

sudo rsync -avh --delete -E \
  --exclude=".DS_Store" \
  --exclude="Library/" \
  "/Users/kevin/" \
  "/Volumes/rabbit/home/"
