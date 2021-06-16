#!/bin/bash

git pull
./run.sh
git add stats.json
git commit -m"Updating stats.json"
git push

