#!/bin/bash
set -e

$containerId = `sudo docker ps | awk -F "" '{print $1}'`

docker rm -f $containerId

# Stop the running container (if any)
echo "Hi"
