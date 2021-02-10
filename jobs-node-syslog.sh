#!/bin/bash

sudo docker run -it --rm -v `pwd`:/tmp node:12.18.4 bash -c 'cd /tmp && npm cache verify && npm install && npm start -- --limit=80'

hello3=`cat jobs.json`
logger -p local0.notice -t ${0##*/}[$$] -- $hello3
rm -f jobs.json

