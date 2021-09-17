#!/bin/sh
export ATHENS_STORAGE=$HOME/athens-storage
mkdir -p $ATHENS_STORAGE
docker run -d \
   -e ATHENS_DISK_STORAGE_ROOT=/var/lib/athens \
   -e ATHENS_STORAGE_TYPE=disk \
   -e ATHENS_GONOSUM_PATTERNS="github.com/colinnewell/*" \
   -e ATHENS_GONOSUMDB="github.com/colinnewell/*" \
   -v "$PWD/ssh-keys:/root/.ssh" \
   -v $ATHENS_STORAGE:/var/lib/athens \
   -v "$PWD/gitconfig:/root/.gitconfig" \
   --name athens-proxy \
   --restart always \
   -p 3000:3000 \
   gomods/athens:latest
