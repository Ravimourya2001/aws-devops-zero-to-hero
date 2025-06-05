#!/bin/bash
set -e

CONTAINER_ID=$(sudo docker ps -q)
sudo docker rm -f $CONTAINER_ID

# Stop the running container (if any)
echo "Hi"
