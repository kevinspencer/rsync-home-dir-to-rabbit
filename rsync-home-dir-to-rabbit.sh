#!/bin/bash

rsync -avh --delete -E \
  --exclude=".DS_Store" \
  --exclude="Library/" \
  "/Users/kevin/" \
  "/Volumes/rabbit/home/"

date > /Volumes/rabbit/.lastran-$(basename "$0" .sh)
